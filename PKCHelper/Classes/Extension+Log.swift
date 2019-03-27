//
//  Extension+Log.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/21.
//  Copyright © 2018年 yuhao Chen. All rights reserved.
//

import Foundation

public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    #if DEBUG
    guard let object = object else { return }
    print("***** \(Date()) \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    #endif
}
