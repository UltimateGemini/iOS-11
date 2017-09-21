//
//  Group.swift
//  BreakPoint
//
//  Created by Noel Franceschi on 9/21/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

class Group {
    
    private var _groupTitle: String
    private var _groupDesc: String
    private var _key: String
    private var _membercount: Int
    private var _members: [String]
    
    var groupTitle: String {
        return _groupTitle
    }
    
    var groupDesc: String {
        return _groupDesc
    }
    
    var key: String {
        return _key
    }
    
    var membercount: Int {
        return _membercount
    }
    
    var members: [String] {
        return _members
    }
    
    init(title: String, description: String, key: String, members: [String], memberCount: Int) {
        self._groupTitle = title
        self._groupDesc = description
        self._key = key
        self._members = members
        self._membercount = memberCount
    }
    
}
