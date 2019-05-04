//
//  Extension+UITabbar.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

//MARK: - UITabBarController

extension UITabBarController {
    
    func setTabBarVisible(visible: Bool, duration: TimeInterval, animated: Bool) {
        
        if (tabBarIsVisible() == visible) { return }
        let frame = self.tabBar.frame
        let height = frame.size.height
        let offsetY = (visible ? -height : height)
        
        // animation
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            
            self.tabBar.frame.offsetBy(dx: 0, dy: offsetY)
            self.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height + offsetY)
            self.view.setNeedsDisplay()
            self.view.layoutIfNeeded()
            
        }) { (_) in
            
        }
        
        //        UIViewPropertyAnimator(duration: duration, curve: .linear) {
        //            self.tabBar.frame.offsetBy(dx:0, dy:offsetY)
        //            self.view.frame = CGRect(x:0,y:0,width: self.view.frame.width, height: self.view.frame.height + offsetY)
        //            self.view.setNeedsDisplay()
        //            self.view.layoutIfNeeded()
        //            }.startAnimation()
    }
    
    func tabBarIsVisible() -> Bool {
        return self.tabBar.frame.origin.y < UIScreen.main.bounds.height
    }
}
