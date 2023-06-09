//
//  ProfileViewController.swift
//  Navigation
//
//  Created by dmitriy on 1/6/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    let drawView = DrawView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Profile"
   
        drawView.backgroundColor = .gray
        view.addSubview(drawView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        drawView.frame = view.bounds
    }
}


