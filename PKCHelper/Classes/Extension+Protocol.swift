//
//  Extension+Protocol.swift
//  Siruba_iOS_2018
//
//  Created by yuhao Chen on 2018/9/4.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

protocol IntUIViewControllerProtocol {
    var type: Int { get set }
    var controller: UIViewController { get set }
}

protocol IntDictionaryUIViewControllerProtocol {
    var dictionary: Dictionary<Int, UIViewController> { get set }
}
