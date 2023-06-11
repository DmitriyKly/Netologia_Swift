//
//  ViewController.swift
//  Lesson04_add02
//
//  Created by dmitriy on 5/6/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        if let orangleView = Bundle.main.loadNibNamed("TestView", owner: nil, options: nil)?.first as? UIView {
            orangleView.frame = CGRect(x: 100.0, y: 200.0, width: 200.0, height: 100.0)
        }
        
    }


}

