//
//  Layout.swift
//  Pingpong
//
//  Created by Soja on 12/24/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

func percentScreenHorizontal(_ percent: CGFloat) -> CGFloat {
    let screen = UIScreen.main.bounds.width
    return screen * percent / 100
}

func statusBarHeight() -> CGFloat {
    return UIApplication.shared.statusBarFrame.height
}
