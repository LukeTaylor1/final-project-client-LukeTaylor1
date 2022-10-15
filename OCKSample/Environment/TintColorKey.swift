//
//  TintColorKey.swift
//  OCKSample
//
//  Created by Corey Baker on 10/16/21.
//  Copyright © 2021 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import SwiftUI

struct TintColorKey: EnvironmentKey {
    static var defaultValue: UIColor {
        #if os(iOS)
        return UIColor { $0.userInterfaceStyle == .light ?  #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) : #colorLiteral(red: 0.001672888757, green: 0.2644871473, blue: 0.432603091, alpha: 1) }
        #else
        return #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        #endif
    }
}

extension EnvironmentValues {
    var tintColor: UIColor {
        self[TintColorKey.self]
    }
}
