//
//  LogInViewController.swift
//  SolarisUV
//
//  Created by Sahiti  on 4/22/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    
    @IBAction func logInPressed(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print("error!")
            }
            else {
                print("Log in successful!")
                
                self.performSegue(withIdentifier: "goToUV", sender: self)
            }
        }
        
    }
}
