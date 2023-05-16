//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by dmitriy on 13/5/2023.
//

import UIKit

class ProfileViewController: UIViewController {

    private var myView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView = Bundle.main.loadNibNamed("ProfileView", owner: nil,options: nil)?.first as?
        ProfileView
        
        view.addSubview(myView)
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
