//
//  Extension+UINavigationBar.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

@available(iOS 11.0, *)
public extension UINavigationBar {
    
    func setGradientBackground(colors: [UIColor]) {
        
        let layerY = UIApplication.shared.statusBarFrame.size.height as CGFloat
        
        let statusBarFrame = CGRect(x: 0, y: -layerY, width: bounds.width, height: layerY)
        let gradientLayerStatusBar = CAGradientLayer(frame: statusBarFrame, colors: colors)

        removeGradientBackground()
        
        gradientLayerStatusBar.name = "gradientLayerStatusBar"
        layer.addSublayer(gradientLayerStatusBar)
        
        let gradientLayer = CAGradientLayer(frame: bounds, colors: colors)
        let image = gradientLayer.createGradientImage()
        setBackgroundImage(image, for: UIBarMetrics.default)
        
        if prefersLargeTitles {
            let newframe = CGRect(origin: .init(x: 0, y: -1000), size: CGSize(width: frame.width, height: 1000))
            let gradientLayerPrefersLargeTitles = CAGradientLayer(frame: newframe, colors: colors)
            guard let image = gradientLayerPrefersLargeTitles.createGradientImage() else { return }
            backgroundColor = UIColor(patternImage: image)
        }
    }

    func removeGradientBackground() {
        layer.sublayers?.forEach({ (sublayer) in
            if sublayer.name == "gradientLayerStatusBar" {
                sublayer.removeFromSuperlayer()
            }
        })
        
        backgroundColor = .clear
        setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }
}
