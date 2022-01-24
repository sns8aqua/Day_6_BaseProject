//
//  AppColors.swift
//  BaseProject
//
//  Created by Santhosh on 13/01/22.
//

import Foundation
import UIKit


struct CustomColors {
    static let primaryColor: String = "#e74c3c"
    static let secondaryColor: String = "#2c3e50"
}


extension UIColor {
    static var appPrimaryColor: UIColor {
        return UIColor(hex: CustomColors.primaryColor)
    }
    static var appSecondaryColor: UIColor {
        return UIColor(hex: CustomColors.secondaryColor)
    }
}


extension UIColor {
    private convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()

        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }

        assert(hexFormatted.count == 6, "Invalid hex code used.")

        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)

        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}
