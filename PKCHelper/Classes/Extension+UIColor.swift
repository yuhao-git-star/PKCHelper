//
//  Extension+UIColor.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

//MARK: - UIColor

extension UIColor {
    
    open class var faceBookBlue : UIColor {
        return UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
    }
    
    open class var minimalGray : UIColor {
        return UIColor(red: 38/255, green: 45/255, blue: 52/255, alpha: 1)
    }
    
    open class var minimalLightGray : UIColor {
        return UIColor(red: 71/255, green: 79/255, blue: 87/255, alpha: 1)
    }
    
    open class var minimalBrown : UIColor {
        return UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
    }
    
    open class var hightLightWhite : UIColor {
        return UIColor(red: 247/255, green: 249/255, blue: 242/255, alpha: 1)
    }
    
    open class var lightPurpleRed : UIColor {
        return UIColor.rgb(red: 194, green: 42, blue: 130)
    }
    
    open class var aboutMeGreen : UIColor {
        return UIColor(red: 20/255, green: 155/255, blue: 124/255, alpha: 1)
    }
    
    open class var arizonaStateUniversityRed : UIColor {
        return UIColor(red: 133/255, green: 0/255, blue: 39/255, alpha: 1)
    }
    
    open class var aetnaRed : UIColor {
        return UIColor(red: 197/255, green: 0/255, blue: 72/255, alpha: 1)
    }
    
    open class var alphabetRed : UIColor {
        return UIColor(red: 229/255, green: 0/255, blue: 28/255, alpha: 1)
    }
    
    open class var tiffanyBlue : UIColor {
        return UIColor(red: 10/255, green: 186/255, blue: 181/255, alpha: 1)
    }
    
    open class var minimalBlockChainIconTop : UIColor {
        return UIColor.rgb(red: 0, green: 219, blue: 222)
    }
    
    open class var minimalBlockChainIconBottom : UIColor {
        return UIColor.rgb(red: 252, green: 0, blue: 255)
    }
    
    open class var lifeGuideOfGameBrightBlue : UIColor {
        return UIColor.rgb(red: 0, green: 201, blue: 255)
    }
    
    open class var lifeGuideOfGameBrightGreen : UIColor {
        return UIColor.rgb(red: 146, green: 254, blue: 157)
    }
    
    open class var overcastBlueColor : UIColor {
        return UIColor(red: 0, green: 187/255, blue: 204/255, alpha: 1.0)
    }
    
    open class var lifeGuideOfGameRed : UIColor {
        return UIColor.rgb(red: 187, green: 61, blue: 65)
    }
    
    open class var minimalBlockPink : UIColor {
        return UIColor.rgb(red: 250, green: 112, blue: 154)
    }
    
    open class var minimalBlockOrange : UIColor {
        return UIColor.rgb(red: 252, green: 173, blue: 109)
    }
    
    static func rgb(red : CGFloat , green : CGFloat , blue :CGFloat ) -> UIColor {
        return UIColor(red: red/255 , green: green/255 , blue: blue/255 , alpha: 1)
    }
    
    static func randomColor() -> UIColor {
        let red = CGFloat(randomDoubleforColor())
        let green = CGFloat(randomDoubleforColor())
        let blue = CGFloat(randomDoubleforColor())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    static func randomDoubleforColor() -> Double {
        
        let random = arc4random_uniform(10000)
        let double = Double(random)/Double(10000)
        return double
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
