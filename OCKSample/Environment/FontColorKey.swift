//
//  FontColorKey.swift
//  OCKSample
//
//  Created by Corey Baker on 1/5/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import SwiftUI

struct FontColorKey: EnvironmentKey {
    static var defaultValue: UIColor {
        #if os(iOS) || os(macOS)
        return UIColor { $0.userInterfaceStyle == .light ?  #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1) : #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) }
        #else
        return #colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.2588235294, alpha: 1)
        #endif
    }
}

extension EnvironmentValues {
    var fontColor: UIColor {
        self[FontColorKey.self]
    }
}
