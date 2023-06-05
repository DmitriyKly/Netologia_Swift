//
//  ViewController.swift
//  Lesson04
//
//  Created by dmitriy on 2/6/2023.
//

import UIKit

class ViewController: UIViewController {

    var textField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view?.backgroundColor = UIColor.white
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        textField = UITextField()
        textField?.frame = CGRect (origin: CGPoint(x: 30, y: 360), size: CGSize(width: 150, height: 30))
        textField?.backgroundColor = .gray
        view.addSubview(textField!)
        
        
        let button = UIButton(type: .system)
        button.frame = CGRect (origin: CGPoint(x: 30, y: 120), size: CGSize(width: 150, height: 30))
        button.setTitle("Show details", for: .normal)
        button.backgroundColor = .green
        view .addSubview(button)
        button.addTarget(self, action: #selector(showDetails01), for: .touchUpInside)
        
        let imageView = UIImageView(frame: CGRect(x: 30, y: 300, width: 50, height: 50))
        imageView.bounds = CGRect(x: -5, y: -5, width: 50, height: 50) // Это как картинка в рамке
        imageView.image = UIImage(named: "figure.walk.circle.fill")
        imageView.backgroundColor = .gray
        view.addSubview(imageView)
        
        
        // Добавление констрейнтов
       /*
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 50),
            imageView.heightAnchor.constraint(equalToConstant: 50),
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
        */
        
        
        let button01 = UIButton(type: .system)
        button01.frame = CGRect (origin: CGPoint(x: 30, y: 240), size: CGSize(width: 150, height: 30))
        button01.setTitle("Show details", for: .normal)
        button01.backgroundColor = .red
        view .addSubview(button01)
        button01.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeGesture.direction = .left
        view.addGestureRecognizer(swipeGesture)
        
    }

    @objc func showDetails() {
          UIView.animate(withDuration: 1) {
              self.textField?.frame = CGRect(origin: CGPoint(x: 30, y: 0), size: CGSize(width: 150, height: 30))
              self.textField?.backgroundColor = .red
      }
        
    }
    @objc func showDetails01() {
          UIView.animate(withDuration: 1) {
              self.textField?.frame = CGRect(origin: CGPoint(x: 30, y: 380), size: CGSize(width: 150, height: 30))
              self.textField?.backgroundColor = .blue
      }
        
    }
    
    @objc func swipe(responder: UISwipeGestureRecognizer) {
        let viewController01 = ViewController01()
        present(viewController01, animated: true)
    }

}

