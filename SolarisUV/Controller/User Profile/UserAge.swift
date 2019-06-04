//
//  UserAge.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/26/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//


import UIKit
import Firebase

var IUageOfUser: Double = 0.0

class UserAge: UIViewController{
    
    
    @IBAction func YoungerThan70(_ sender: Any) {
        print("Younger than 70")
        IUageOfUser = 600
        
    }
    
    @IBAction func OlderThan70(_ sender: Any) {
        print("Older than 70")
        IUageOfUser = 800
    }
    
    
    
 }
