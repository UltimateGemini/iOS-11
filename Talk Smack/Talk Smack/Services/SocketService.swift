//
//  SocketService.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 9/13/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {

    static let instance = SocketService()
    
    override init() {
        super.init()
    
    }
    
    var socket : SocketIOClient = SocketIOClient(socketURL: URL(string: BASE_URL)!)
    
    func establishConnection() {
    
        socket.connect()
    }
    
    func closeConnection() {
    
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
    
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDesc = dataArray[1] as? String else { return }
            guard let channelId = dataArray[2] as? String else { return }
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    func addMessage(messageBody: String, userId: String, channelId: String, completion: @escaping CompletionHandler) {
        let user = UserDataService.instance
        socket.emit("newMessage", messageBody, userId, channelId, user.name, user.avatarName, user.avatarColor)
        completion(true)
    }
}
