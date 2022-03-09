//
//  WelcomeViewController.swift
//  Logintable
//
//  Created by Dymitr on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "Welcome \(userName ?? "")"
    }
    

    @IBAction func logOut() {
        dismiss(animated: true)
    }
    

}
