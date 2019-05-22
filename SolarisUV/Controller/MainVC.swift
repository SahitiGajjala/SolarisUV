//
//  MainVC.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/19/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    // Tap Menu button and toggle
    @IBAction func onMenuTapped() {
        print ("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self,
                                               selector: #selector(a),
                                               name: NSNotification.Name("A"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(b),
                                               name: NSNotification.Name("B"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(c),
                                               name: NSNotification.Name("C"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(d),
                                               name: NSNotification.Name("D"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(e),
                                               name: NSNotification.Name("E"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(f),
                                               name: NSNotification.Name("F"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(g),
                                               name: NSNotification.Name("G"),
                                               object: nil)
    }

   @objc func a() {
     performSegue(withIdentifier: "A", sender: nil)
    }

    @objc func b() {
    performSegue(withIdentifier: "B", sender: nil)

    }

    @objc func c() {
    performSegue(withIdentifier: "C", sender: nil)
    }
    
    @objc func d() {
        performSegue(withIdentifier: "D", sender: nil)
    }
    
    @objc func e() {
        performSegue(withIdentifier: "E", sender: nil)
    }
    
    @objc func f() {
        performSegue(withIdentifier: "F", sender: nil)
    }
    
    @objc func g() {
        performSegue(withIdentifier: "G", sender: nil)
    }
    

}
