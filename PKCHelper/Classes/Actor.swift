//
//  Actor.swift
//  TSOCiOS
//
//  Created by yuhao Chen on 2018/6/4.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

class Actor: NSObject {
    
    weak var windown: UIWindow?
    let containerView: UIView = {
        
        let cv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        cv.backgroundColor = UIColor.init(white: 0, alpha: 0.8)
        cv.layer.cornerRadius = 10
        return cv
    }()
    
    let ai = UIActivityIndicatorView()
    
    override init() {
        super.init()
        self.windown = UIApplication.shared.keyWindow
        ai.style = .whiteLarge
        guard self.windown != nil else { return }
        DispatchQueue.main.async {
            self.windown?.addSubview(self.containerView)
            self.containerView.center = (self.windown?.center)!
            self.containerView.addSubview(self.ai)
            self.ai.center = CGPoint(x: self.containerView.frame.width / 2, y: self.containerView.frame.height / 2)
            self.containerView.alpha = 0
        }
    }
    
    func addActivityIndicatorToKeyWindown(style: UIActivityIndicatorView.Style = .whiteLarge) {
        
        DispatchQueue.main.async {
            
            self.ai.startAnimating()
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.containerView.alpha = 1
            }, completion: { (_) in
                
            })
            
            
        }
    }
    
    func removeActivityIndicatorToKeyWindown() {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.containerView.alpha = 0
            }, completion: { (_) in
                self.containerView.removeFromSuperview()
            })
        }
    }
    
}













