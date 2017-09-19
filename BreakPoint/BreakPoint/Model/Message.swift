//
//  Message.swift
//  BreakPoint
//
//  Created by Noel Franceschi on 9/19/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderId: String
    
    var content: String {
        return _content
    }
    
    var senderId: String {
        return _senderId
    }
    
    init(content: String, senderId: String) {
        self._content = content
        self._senderId = senderId
    }
}
