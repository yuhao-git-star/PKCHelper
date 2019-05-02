//
//  Extension.swift
//  BitcoinBlockChainMinimalist
//
//  Created by 陳囿豪 on 2017/07/11.
//  Updata by 陳囿豪 on 2017/08/20.
//  Copyright © 2019 PKC Design. All rights reserved.
//  https://github.com/yasuoyuhao/Yasuo
//  1.4 Version

import UIKit


//MARK:  NSAttributedString

public extension NSAttributedString {
    
    static func enterN(ofSize: CGFloat) -> NSAttributedString {
        
        let enterNAttributedString = NSAttributedString(string: "\n\n", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: ofSize)])
        
        return enterNAttributedString
    }
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, context: NSStringDrawingContext.init())
        return boundingBox.height
    }
    
    func widthWithConstrainedHeight(height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, context: NSStringDrawingContext.init())
        return boundingBox.width
    }
    
    static func addNSAttributedString(string: String, ofFont: UIFont, color: UIColor?, bold: Bool =  false) -> NSAttributedString {
        
        if bold {
            
            if let color = color {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedString.Key.font: ofFont, NSAttributedString.Key.foregroundColor: color])
                
                return attributedString
                
            } else {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedString.Key.font: ofFont])
                
                return attributedString
            }
            
        } else {
            
            if let color = color {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedString.Key.font: ofFont, NSAttributedString.Key.foregroundColor: color])
                
                return attributedString
                
            } else {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedString.Key.font: ofFont])
                return attributedString
            }
        }
    }
}

//MARK: - NSMutableAttributedString

public extension NSMutableAttributedString {
    
    static func creativeNSMutableAttributedString() -> NSMutableAttributedString {
        
        let attributedString = NSMutableAttributedString.init()
        return attributedString
    }
    
    
    static func paragraphSpaceLine(attributedText: NSMutableAttributedString, paragraphStyle: NSMutableParagraphStyle) -> NSMutableAttributedString {
        
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: .init(location: 0, length: (attributedText.length)))
        return attributedText
    }
}

//MARK: - String

public extension String {
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.height
    }
    
    func widthWithConstrainedHeight(height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.width
    }
    
    func isHttp() -> Bool {
        return self.contains("https") || self.contains("http") ? true : false
    }
    
    func toSecureHttps() -> String {
        return self.contains("https") ? self : self.replacingOccurrences(of: "http", with: "https")
    }
    
    func toBaseArrayObject<T>(_ object: T) -> T? {
        guard let stringData = (self.data(using: String.Encoding.utf8)) else { return nil }
        guard let stringArray = try? JSONSerialization.jsonObject(with: stringData, options: .allowFragments) else { return nil}
        guard let object = stringArray as? T else { return nil }
        
        return object
    }
    
    func toCodableObject<T: Codable>(_ object: T) -> T? {
        guard let stringData = (self.data(using: String.Encoding.utf8)) else { return nil }
        let decoder: JSONDecoder = JSONDecoder()
        let responseFiles = try? decoder.decode(T.self, from: stringData)
        
        return responseFiles
    }
    
    func toUUIDFromNotHyphenUUIDString() -> UUID? {
        
        var notHyphenUUIDString = self.uppercased()
        guard notHyphenUUIDString.count == 32 else { return nil}
        
        var indx = notHyphenUUIDString.index(notHyphenUUIDString.startIndex,offsetBy: 8)
        
        for _ in 1...4 {
            notHyphenUUIDString.insert("-", at: indx)
            indx = notHyphenUUIDString.index(notHyphenUUIDString.startIndex, offsetBy: indx.utf16Offset(in: self) + 5)
        }
        
        return UUID(uuidString: notHyphenUUIDString.uppercased())
    }
    
    func toAddingPercentEncoding() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? ""
    }
}

//MARK: - NSAttributedString

public extension NSAttributedString {
    
    func heightWithConstrainedWidth(width: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, context: nil)
        return ceil(boundingBox.height)
    }
}











