//
//  PostViewController.swift
//  Navigation
//
//  Created by dmitriy on 1/6/2023.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "My Post"
    var redView: RedView?
    var greenView: GreenView?
    var blackView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationItem.title = titlePost
        
        
        let infoBar = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(infoView))
        navigationItem.rightBarButtonItem = infoBar
        
        
        
        redView = RedView()
        configureRedView(redView: redView)
        
        greenView = GreenView()
        if let greenView = greenView {
            greenView.backgroundColor = .green
            redView?.addSubview(greenView)
        }
        
        
        blackView = BlackView()
        confifureBlackView(blackView: blackView)
        

        func configureRedView(redView: UIView?) {
            guard let _redView = redView else { return }
            _redView.backgroundColor = .red
            view.addSubview(_redView)
        }
        
        
        func confifureBlackView(blackView: UIView?) {
            guard let _blackView = blackView else { return }
            _blackView.backgroundColor = .black
            greenView?.addSubview(_blackView)
        }
        
        
        
        
    
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
       configureViewLayout()
        
        func configureViewLayout() {
            guard let redView = redView, let blackView = blackView, let greenView = greenView else { return }
            
            let insertY = 30
            let insertX = 30
            
            redView.frame = CGRect(x: insertY, y: insertY, width: Int(view.frame.width) - 2*insertX, height: Int(view.frame.height) - insertY * 2)
            
            let greenInset:CGFloat = 20
            let greenViewWight = redView.frame.width - greenInset * 2
            let greenViewHeight = redView.frame.height - greenInset * 2
            
            greenView.frame = CGRect(x: greenInset, y: greenInset, width: greenViewWight, height: greenViewHeight)
            
            let blackInsert: CGFloat = 30
            let blackViewWight = greenView.frame.width - blackInsert * 2
            let blackViewHeight = greenView.frame.height - blackInsert * 2
            
            blackView.frame = CGRect(x: blackInsert, y: blackInsert, width: blackViewWight , height: blackViewHeight )

        }
        
    }
    
    
    @objc func infoView() {
        
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true, completion: nil)
        
    }
    
    
}

