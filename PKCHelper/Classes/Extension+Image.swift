//
//  Extension+Image.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

//MARK: - UIImageView

class UIImageViewPasteboard: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    func sharedInit() {
        isUserInteractionEnabled = true
        addGestureRecognizer(UILongPressGestureRecognizer(target: self,
                                                          action: #selector(showMenu)))
    }
    
    @objc func showMenu(sender: AnyObject?) {
        becomeFirstResponder()
        let menu = UIMenuController.shared
        if !menu.isMenuVisible {
            menu.setTargetRect(bounds, in: self)
            menu.setMenuVisible(true, animated: true)
        }
    }
    
    //复制
    override func copy(_ sender: (Any)?) {
        let board = UIPasteboard.general
        board.image = self.image
        let menu = UIMenuController.shared
        menu.setMenuVisible(false, animated: true)
    }
    
    //粘贴
    override func paste(_ sender: (Any)?) {
        let board = UIPasteboard.general
        self.image = board.image
        let menu = UIMenuController.shared
        menu.setMenuVisible(false, animated: true)
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.copy(_:)) {
            return true
        }else if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return true
        }
        return false
    }
    
}

//MARK: - UIImage

extension UIImage {
    
    static public func createPictureFromView(view: UIView) -> UIImage? {
        
        UIGraphicsBeginImageContext(view.frame.size)
        guard let graphicsGetCurrentContext = UIGraphicsGetCurrentContext() else { return nil }
        view.layer.render(in: graphicsGetCurrentContext )
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        guard let cgImage = image.cgImage else { return nil }
        
        return UIImage(cgImage: cgImage)
    }
    
    func scale(newWidth: CGFloat) -> UIImage {
        
        if self.size.width == newWidth {
            return self
        }
        
        let scaleFactor = newWidth / self.size.width
        let newHeight = self.size.height * scaleFactor
        let newSize = CGSize(width: newWidth, height: newHeight)
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0);
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        
        let newImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage ?? self
    }
}
