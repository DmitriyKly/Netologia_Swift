//
//  ViewController.swift
//  Lesson3
//
//  Created by dmitriy on 17/5/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    @IBAction func showScreenB() {
        performSegue(withIdentifier: "showScreenB", sender: self)
        let viewController01 = ViewController01()
        present(viewController01, animated: true)
    }
    
    @IBAction func showScreenC() {
        performSegue(withIdentifier: "showScreenC", sender: self)
    }

}


