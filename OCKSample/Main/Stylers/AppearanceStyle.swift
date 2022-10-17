//
//  AppearanceStyle.swift
//  OCKSample
//
//  Created by  on 10/15/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import CareKitUI

struct AppearanceStyle: OCKAppearanceStyler {
    var opacity1: CGFloat { 0.50 }
    var shadowOpacity1: Float { 0.10 }
    var shadowRadius1: CGFloat { 9 }
    var shadowOffset1: CGSize { CGSize(width: 1, height: 3) }
}
