//
//  CountdownTimer.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

enum CountdownTimer {}

extension CountdownTimer {
    struct Data: Codable {
        let title: String
        let date: Date
    }
}

