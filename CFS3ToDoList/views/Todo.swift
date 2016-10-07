//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by John D Hearn on 10/7/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo{
    var text: String
    init(text: String) {
        self.text = text
    }
}

protocol Identity{
    var identifier: String{ set get }
}

var identifier
