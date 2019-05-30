//
//  Extensions.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/29/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static let colorPalettecoral = UIColor().colorFromHex("F28760")
    static let colorPaletteViolet = UIColor().colorFromHex("9393FF")
    static let colorPaletteDeepOrange = UIColor().colorFromHex("F2632F")
    static let colorPaletteGrey = UIColor().colorFromHex("707070")
    static let colorPaletteDeepBlue = UIColor().colorFromHex("5353FF")
    
    func colorFromHex(_ hex : String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
        hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.black
        }
        
        var rgb : UInt32 = 0
        Scanner(string: hexString).scanHexInt32(&rgb)
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
    }
}

