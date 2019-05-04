//
//  Extension+Log.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/8/21.
//  Copyright © 2019 PKC Design. All rights reserved.

import Foundation
import SwiftyBeaver

public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    #if DEBUG
    guard let object = object else { return }
    print("***** \(Date()) \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    #endif
}

public class PKCLogger {

    static public let shared = PKCLogger()

    private let log = SwiftyBeaver.self
    private let console = ConsoleDestination()

    private init() {
        log.addDestination(console)
    }

    public func varbose<T>(_ object: T, filename: String = #file, line: Int = #line, funcname: String = #function) {
        #if DEBUG
        log.verbose("***** \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
        #endif
    }

    public func debug<T>(_ object: T, filename: String = #file, line: Int = #line, funcname: String = #function) {
        #if DEBUG
        log.debug("***** \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
        #endif
    }

    public func info<T>(_ object: T, filename: String = #file, line: Int = #line, funcname: String = #function) {
        log.info("***** \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    }

    public func warning<T>(_ object: T, filename: String = #file, line: Int = #line, funcname: String = #function) {
        log.warning("***** \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    }

    public func error<T>(_ object: T, filename: String = #file, line: Int = #line, funcname: String = #function) {
        log.error("***** \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    }
}
