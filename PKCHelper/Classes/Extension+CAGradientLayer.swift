//
//  Extension+G.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

// MARK: - CAGradientLayer
public extension CAGradientLayer {
    
    convenience init(frame: CGRect, colors: [UIColor]) {
        self.init()
        self.frame = frame
        self.colors = []
        for color in colors {
            self.colors?.append(color.cgColor)
        }
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 0)
    }
    
    func createGradientImage() -> UIImage? {
        
        var image: UIImage? = nil
        UIGraphicsBeginImageContext(bounds.size)
        if let context = UIGraphicsGetCurrentContext() {
            render(in: context)
            image = UIGraphicsGetImageFromCurrentImageContext()
        }
        UIGraphicsEndImageContext()
        return image
    }
    
    static func setupStatusBarView(colors: [UIColor], startPoint: CGPoint = .init(x: 0, y: 0.5), endPoint: CGPoint = .init(x: 1, y: 0.5)) {
        
        let statWindow = UIApplication.shared.value(forKey:"statusBarWindow") as! UIView
        let statusBarFrame = UIApplication.shared.statusBarFrame
        let gradientLayerStatusBar = CAGradientLayer(frame: statusBarFrame, colors: colors)
        gradientLayerStatusBar.startPoint = startPoint
        gradientLayerStatusBar.endPoint = endPoint
        if let image = gradientLayerStatusBar.createGradientImage() {
            statWindow.subviews.first?.backgroundColor = UIColor(patternImage: image)
        }
    }
    
    static func setupSearchControllerBarView(searchController: UISearchController, colors: [UIColor]) {
        var frame = searchController.searchBar.frame
        if frame.height == 0 {
            frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: 52)
        }
        let gradientLayerStatusBar = CAGradientLayer(frame: frame, colors: colors)
        if let image = gradientLayerStatusBar.createGradientImage() {
            searchController.searchBar.backgroundColor = UIColor(patternImage: image)
            searchController.searchBar.barTintColor = UIColor(patternImage: image)
        }
    }

    static func setupStatusBarViewAlpha() {

        let statWindow = UIApplication.shared.value(forKey:"statusBarWindow") as? UIView
        statWindow?.subviews.first?.backgroundColor = .clear
    }
    
}
