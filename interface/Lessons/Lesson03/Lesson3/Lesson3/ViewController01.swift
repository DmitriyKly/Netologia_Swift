//
//  ViewController01.swift
//  Lesson3
//
//  Created by dmitriy on 20/5/2023.
//

import UIKit

class ViewController01: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad 01")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear 01")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear 01")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear 01")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear 01")
    }
}
