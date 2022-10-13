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
        return UIColor { $0.userInterfaceStyle == .light ?  #colorLiteral(red: 0.729332149, green: 0.8384103179, blue: 0.858330965, alpha: 1) : #colorLiteral(red: 0.9560422301, green: 0.9609465003, blue: 0.9608604312, alpha: 1) }
        #else
        return #colorLiteral(red: 0, green: 0.2855202556, blue: 0.6887390018, alpha: 1)
        #endif
    }
}

extension EnvironmentValues {
    var tintColor: UIColor {
        self[TintColorKey.self]
    }
}
