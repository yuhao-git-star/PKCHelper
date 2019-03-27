//
//  Extension+UIViewController.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/11/20.
//  Copyright © 2018 yuhao Chen. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    public func presentTargetController(to vc: UIViewController, isPresentedDismiss: Bool = false, completion: (() -> Void)? = nil) {
        
        if isPresentedDismiss {
            weak var pvc = self.presentingViewController
            DispatchQueue.main.async {
                self.dismiss(animated: true, completion: {
                    pvc?.present(vc, animated: true, completion: completion)
                })
            }
        } else {
            DispatchQueue.main.async {
                self.present(vc, animated: true, completion: completion)
            }
        }
    }
}
