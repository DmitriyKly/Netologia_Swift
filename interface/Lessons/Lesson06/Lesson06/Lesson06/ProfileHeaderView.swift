//
//  ProfileHeaderView.swift
//  Lesson06
//
//  Created by dmitriy on 14/6/2023.
//

import UIKit

        class ProfileViewController: UIViewController {

            let profileHeaderView = ProfileHeaderView()
            
            override func viewDidLoad() {
                super.viewDidLoad()
                // add profile header view to the view hierarchy
                view.addSubview(profileHeaderView)
                // define constraints
                profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                    profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
                ])
                
                // add new UIButton
                let newButton = UIButton()
                newButton.translatesAutoresizingMaskIntoConstraints = false
                newButton.setTitle("New Button", for: .normal)
                newButton.setTitleColor(.black, for: .normal)
                newButton.backgroundColor = .systemGray4
                view.addSubview(newButton)
                NSLayoutConstraint.activate([
                    newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                    newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                    newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                ])
            }
        }

