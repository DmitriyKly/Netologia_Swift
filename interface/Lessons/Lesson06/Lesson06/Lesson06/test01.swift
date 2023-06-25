//
//  test01.swift
//  Lesson06
//
//  Created by dmitriy on 14/6/2023.
//

import UIKit

class ProfileHeaderView: UIView {

    let avatarImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            // configure image view
            return imageView
        }()
        
        let fullNameLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            // configure label
            return label
        }()
        
        let statusLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            // configure label
            return label
        }()
        
        let statusTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            // configure text field
            return textField
        }()
        
        let setStatusButton: UIButton = {
            let setStatusButton = UIButton(type: .system)
            setStatusButton.layer.cornerRadius = 8
            setStatusButton.setTitle("Show status", for: .normal)
            setStatusButton.tintColor = .white
            setStatusButton.backgroundColor = .systemBlue
            setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
            setStatusButton.layer.shadowRadius = 4
            setStatusButton.layer.shadowColor = UIColor.black.cgColor
            setStatusButton.layer.shadowOpacity = 0.7
            setStatusButton.translatesAutoresizingMaskIntoConstraints = false
            return setStatusButton
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            // add subviews
            addSubview(avatarImageView)
            addSubview(fullNameLabel)
            addSubview(statusLabel)
            addSubview(statusTextField)
            addSubview(setStatusButton)
            
            // define constraints
            NSLayoutConstraint.activate([
                avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                avatarImageView.widthAnchor.constraint(equalToConstant: 100),
                avatarImageView.heightAnchor.constraint(equalToConstant: 100),

                fullNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
                fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
                fullNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

                statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 10),
                statusLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
                statusLabel.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),

                statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
                statusTextField.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
                statusTextField.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),

                setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
                setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor),
                setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor),
                setStatusButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }


