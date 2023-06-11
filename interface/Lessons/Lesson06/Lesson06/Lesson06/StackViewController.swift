//
//  StackViewController.swift
//  Lesson06
//
//  Created by dmitriy on 11/6/2023.
//

import UIKit

   class StackViewController: UIViewController {


    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false // Включаем возможность использования Constraint
        stackView.backgroundColor = .systemGray4
        stackView.axis = .horizontal // расположение обьектов
        stackView.distribution = .fillEqually // как будут распологаться эелементы
        stackView.spacing = 20  // центральная линия между обьектами
        stackView.alignment = .center // куда будем прибивать эти элементы
        return stackView
    }()
     
    
    private  let redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        return redView
    }()
 
    private let blueView: UIView = { // Второй вариант написания замыкания
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        return blueView
    }()
   
       
       private let textLabel: UILabel = {
           let label = UILabel()
           label.translatesAutoresizingMaskIntoConstraints = false
           label.text = "Название ++++++"
           label.backgroundColor = .darkGray
           label.numberOfLines = 0
           
           return label
       }()
       
       
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
         layout()
        
        print(textLabel.intrinsicContentSize)
    }
    
    
    private func layout() {
        view.addSubview(stackView)
        view.addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 350),
            
            redView.heightAnchor.constraint(equalToConstant: 100),
            blueView.heightAnchor.constraint(equalToConstant: 150)
         
        ])
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(blueView)
      
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            textLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            // textLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)
            textLabel.widthAnchor.constraint(equalToConstant: textLabel.intrinsicContentSize.width)
        ])
        
    }
    
    
}
