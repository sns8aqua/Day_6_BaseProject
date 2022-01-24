//
//  AppFonts.swift
//  BaseProject
//
//  Created by Santhosh on 13/01/22.
//

import Foundation
import UIKit

struct CustomFontName {
    static let reguralFont = "Lato-Regular"
    static let boldFont = "Lato-Bold"
    static let thinFont = "Lato-Hairline"
}


extension UIFont {
    
    static func reguralFont(size: CGFloat) -> UIFont {
        let name = CustomFontName.reguralFont
        let customFont = UIFont(name: name, size: size)
        return customFont ?? systemFont(ofSize: size)
    }
    
    
    static func boldFont(size: CGFloat) -> UIFont {
        let name = CustomFontName.boldFont
        let customFont = UIFont(name: name, size: size)
        return customFont ?? systemFont(ofSize: size)
    }
    
    static func thinFont(size: CGFloat) -> UIFont {
        let name = CustomFontName.thinFont
        let customFont = UIFont(name: name, size: size)
        return customFont ?? systemFont(ofSize: size)
    }
}
