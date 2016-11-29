//
//  Todo.swift
//  CFS3ToDoList
//
//  Modified by John Hearn on 11/28/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo: Identity{
    var text: String
    var identifier: String
    
    init(text: String) {
        self.text = text
        self.identifier = UUID().uuidString
    }
    
}
