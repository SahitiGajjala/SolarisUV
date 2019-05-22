//
//  RegisterViewController.swift
//  SolarisUV
//
//  Created by Sahiti  on 4/22/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    //Link IBOutlets
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func registerPressed(_ sender: Any) {
        
        //Set up a new user on our Firebase database
        
        Auth.auth().createUser(withEmail: emailTextfield.text!,
        password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            }
            else {
                //success
                print("Registration Successful!")
                
                self.performSegue(withIdentifier: "goToUV", sender: self)
                
            }
            
        }
        
    }
    
}
