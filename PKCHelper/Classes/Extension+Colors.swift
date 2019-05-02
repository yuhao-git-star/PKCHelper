//
//  Extension+Colors.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/13.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

// Color palette

public extension UIColor {
    
    @nonobjc class var tomato: UIColor {
        return UIColor(red: 240.0 / 255.0, green: 65.0 / 255.0, blue: 35.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var dustyOrange: UIColor {
        return UIColor(red: 240.0 / 255.0, green: 110.0 / 255.0, blue: 35.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var reddishOrange: UIColor {
        return UIColor(red: 249.0 / 255.0, green: 70.0 / 255.0, blue: 28.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var vermillion: UIColor {
        return UIColor(red: 243.0 / 255.0, green: 36.0 / 255.0, blue: 22.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var greyish: UIColor {
        return UIColor(white: 174.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var brownishGrey: UIColor {
        return UIColor(white: 97.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var whiteLine: UIColor {
        return UIColor(white: 245.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var whiteBackground: UIColor {
        return UIColor(white: 250.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var warmGrey: UIColor {
        return UIColor(white: 158.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var whiteNormal: UIColor {
        return UIColor(white: 238.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var tangerine: UIColor {
        return UIColor(red: 1.0, green: 145.0 / 255.0, blue: 0.0, alpha: 1.0)
    }
    
    @nonobjc class var tomatoSignIn: UIColor {
        return UIColor(red: 240.0 / 255.0, green: 65.0 / 255.0, blue: 35.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var pinkishGrey: UIColor {
        return UIColor(white: 189.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var warmGreySupportNumberContent: UIColor {
        return UIColor(white: 117.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var pinkishOrange: UIColor {
        return UIColor(red: 1.0, green: 112.0 / 255.0, blue: 67.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var whiteProgress: UIColor {
        return UIColor(white: 224.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var seafoamBlue: UIColor {
        return UIColor(red: 128.0 / 255.0, green: 208.0 / 255.0, blue: 199.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var azureTwo: UIColor {
        return UIColor(red: 0.0, green: 145.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var azure: UIColor {
        return UIColor(red: 0.0, green: 147.0 / 255.0, blue: 233.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var azureDealer: UIColor {
        return UIColor(red: 15.0 / 255.0, green: 151.0 / 255.0, blue: 235.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var tomatoTwo: UIColor {
        return UIColor(red: 240.0 / 255.0, green: 73.0 / 255.0, blue: 35.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var whiteLineSp: UIColor {
        return UIColor(white: 241.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var warmPink: UIColor {
        return UIColor(red: 1.0, green: 83.0 / 255.0, blue: 116.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var tomatoThree: UIColor {
        return UIColor(red: 238.0 / 255.0, green: 42.0 / 255.0, blue: 42.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var salmon: UIColor {
        return UIColor(red: 1.0, green: 107.0 / 255.0, blue: 100.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var apricot: UIColor {
        return UIColor(red: 1.0, green: 195.0 / 255.0, blue: 95.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var whiteProcessingStatus: UIColor {
        return UIColor(white: 251.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var lightCyan: UIColor {
        return UIColor(red: 167.0 / 255.0, green: 1.0, blue: 235.0 / 255.0, alpha: 1.0)
    }
}

// Text styles

@available(iOS 8.2, *)
extension UIFont {
    
    class var headerTitle: UIFont {
        return UIFont.systemFont(ofSize: 28.0, weight: .medium)
    }
    
    class var searchFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 16.0)!
    }
    
    class var searchTitle: UIFont {
        return UIFont(name: "PingFangTC-Medium", size: 18.0)!
    }
    
    class var docTitle: UIFont {
        return UIFont.systemFont(ofSize: 18.0, weight: .regular)
    }
    
    class var userNameFont: UIFont {
        return UIFont.systemFont(ofSize: 22.0, weight: .regular)
    }
    
    class var menuSectionFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 18.0)!
    }
    
    class var popupMessage: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 14.0)!
    }
    
    class var popupButton: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 16.0)!
    }
    
    class var signupButtonFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 12.0)!
    }
    
    class var forgetPasswordFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 12.0)!
    }
    
    class var orTextFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 12.0)!
    }
    
    class var supportTitleFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 20.0)!
    }
    
    class var supportNumberTitle: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 10.0)!
    }
    
    class var supportNumberContentFont: UIFont {
        return UIFont(name: "PingFangTC-Medium", size: 16.0)!
    }
    
    class var supportProcessingStatusFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 16.0)!
    }
    
    class var selectDealerStatusFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 20.0)!
    }
    
    class var supportCardTitleFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 14.0)!
    }
    
    class var choiceQuestionFont: UIFont {
        return UIFont(name: "PingFangTC-Medium", size: 16.0)!
    }
    
    class var descriptionProblemFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 16.0)!
    }
    
    class var processingStatusTimelineFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 17.0)!
    }
    
    class var processingStatusTimelineSupFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 15.0)!
    }
    
    class var processingStatusTimelineSupTitleFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 15.0)!
    }
    
    class var processingStatusTimelinePrincipalTitleFont: UIFont {
        return UIFont(name: "PingFangTC-Regular", size: 12.0)!
    }
    
}
