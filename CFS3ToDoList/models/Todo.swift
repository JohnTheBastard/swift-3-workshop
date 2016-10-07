//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by John D Hearn on 10/7/16.
//  Copyright © 2016 John Hearn. All rights reserved.
//

import Foundation

class Todo{
    var text: String
    var identifier: String

    init(text: String) {
        self.text = text
        self.identifier = UUID().uuidString
    }
}
