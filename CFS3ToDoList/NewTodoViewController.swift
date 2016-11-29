//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by John D Hearn on 11/28/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
    }

    @IBAction func closeButtonPressed(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if let userText = textField.text{
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        dismiss(animated: true, completion: nil)
        
        return true
    }

}
