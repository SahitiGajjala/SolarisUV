//
//  SideMenuVC.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/19/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0:   NotificationCenter.default.post(name: NSNotification.Name("A"), object: nil)
        case 1:   NotificationCenter.default.post(name: NSNotification.Name("B"), object: nil)
        case 2:   NotificationCenter.default.post(name: NSNotification.Name("C"), object: nil)
        case 3:   NotificationCenter.default.post(name: NSNotification.Name("D"), object: nil)
        case 4:   NotificationCenter.default.post(name: NSNotification.Name("E"), object: nil)
        case 5:   NotificationCenter.default.post(name: NSNotification.Name("F"), object: nil)
        case 6:   NotificationCenter.default.post(name: NSNotification.Name("G"), object: nil)
        default: break
        }
    }

}
