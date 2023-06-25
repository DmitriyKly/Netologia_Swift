//
//  ViewController.swift
//  test
//
//  Created by dmitriy on 25/6/2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myTextField : UITextField

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.myTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
