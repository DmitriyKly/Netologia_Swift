//
//  ViewController.swift
//  Lesson06
//
//  Created by dmitriy on 10/6/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var isPortraitOrientation: Bool {
        return UIDevice.current.orientation == .portrait
    }
    
    private var portraitLayout = [NSLayoutConstraint]()
    private var landscapeLayout = [NSLayoutConstraint]()
    
    private  let redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        return redView
    }()
    
    private let blueView: UIView = { // Второй вариант написания замыкания
        $0.backgroundColor = .blue
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        isPortraitOrientation ? activatePortrait() : activateLandscape() // Если портретная ореинтация обратись к функции activatePortrait и наоборот
    }
    
    private func activatePortrait() {
        NSLayoutConstraint.deactivate(landscapeLayout)
        NSLayoutConstraint.activate(portraitLayout)
    }
    
    private func activateLandscape() {
        NSLayoutConstraint.deactivate(portraitLayout)
        NSLayoutConstraint.activate(landscapeLayout)
    }
    
    
    
    private func layout() {
        view.addSubview(redView)
        view.addSubview(blueView)
        
        portraitLayout = [ // Портретная ориентация
            // Red View
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10), // Констрейнт отступа высоты от защищенной области на 10 пунктов
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            redView.heightAnchor.constraint(equalToConstant: 550), // высота обьекта
            // Blue View
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20), // по высоте равный высоте red с отступом 20
            blueView.leadingAnchor.constraint(equalTo: redView.leadingAnchor), // по левому краю равный левому краю red
            blueView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ]
        
        landscapeLayout = [
            // Red View
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            //redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            redView.widthAnchor.constraint(equalToConstant: (view.frame.height / 2) - 60),
            redView.heightAnchor.constraint(equalToConstant: 250),
            // Blue View
            blueView.topAnchor.constraint(equalTo: redView.topAnchor),
            blueView.leadingAnchor.constraint(equalTo: redView.trailingAnchor),
            
            blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        
    }
    
    
    
}

