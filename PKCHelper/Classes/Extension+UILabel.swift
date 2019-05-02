//
//  Extension+UILabel.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/14.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

//MARK: - UILabel

class UILabelCanPasteboard: UILabel {
    //system method
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addLongPressHandler()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addLongPressHandler()
    }
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(copy(_:)) {
            return true
        }else{
            return false
        }
    }
    override func copy(_ sender: Any?) {
        let pBoard = UIPasteboard.general
        pBoard.string = self.text
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    required init?(coder aDecoder: NSCoder) {
        //实现父类的该方法
        super.init(coder: aDecoder)
    }
    
    // MARK: - private method
    func addLongPressHandler() {
        //UILabel默认不接收事件，添加touch事件
        self.isUserInteractionEnabled = true
        let longPressGesture = UILongPressGestureRecognizer.init(target: self, action: #selector(longPressAction))
        self.addGestureRecognizer(longPressGesture)
    }
    @objc func longPressAction() {
        
        self.becomeFirstResponder()
        let copyItem = UIMenuItem(title: "複製", action: #selector(copy(_:)))
        let menu = UIMenuController.shared
        menu.menuItems = [copyItem]
        if menu.isMenuVisible {
            return
        }
        menu.setTargetRect(bounds, in: self)
        menu.setMenuVisible(true, animated: true)
    }
}

public extension UILabel {
    func creatBottomLine(useColor color: UIColor) {
        let frame = self.frame
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: frame.height, width: frame.width - 1, height: 1)
        bottomLayer.borderColor = color.cgColor
        bottomLayer.borderWidth = 1
        layer.addSublayer(bottomLayer)
    }
}
