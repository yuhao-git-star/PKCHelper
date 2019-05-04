//
//  Extension+UIStackView.swift
//  Alamofire
//
//  Created by yuhao Chen on 2019/5/2.
//  Copyright © 2019 PKC Design. All rights reserved.

import UIKit

@available(iOS 9.0, *)
public class PKCVStackView: UIStackView {

    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)

        arrangedSubviews.forEach({addArrangedSubview($0)})

        self.spacing = spacing
        self.axis = .vertical
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
