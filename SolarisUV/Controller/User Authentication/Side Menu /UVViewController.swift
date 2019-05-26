//
//  UVViewController.swift
//  SolarisUV
//
//  Created by Sahiti  on 4/22/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit
import Firebase

class UVViewController: UIViewController {
    
    // Tap Menu button and toggle
    @IBAction func onMenuTapped() {
        print ("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!

    // Toggle the side menu
    var sideMenuOpen = false

   override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }

   @objc func toggleSideMenu () {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }

    }

    //Declaration of instance variables

    //IBOutlets

//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }

    @IBAction func logOutPressed(_ sender: Any) {
        
        //Log out the user and send them back to the WelcomeViewController
        do {
            try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
            
            print("Log out successful!")
        }
        catch {
            print("error, there was a problem signing out.")
        }
    }
    
}
