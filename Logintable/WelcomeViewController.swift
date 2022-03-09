//
//  WelcomeViewController.swift
//  Logintable
//
//  Created by Dymitr on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    

    @IBAction func logOut() {
        dismiss(animated: true)
    }
    

}
