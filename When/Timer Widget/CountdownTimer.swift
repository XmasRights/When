//
//  CountdownTimer.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

enum CountdownTimer {}

extension CountdownTimer {
    struct Data: Codable, Identifiable {
        var id: String {
            return title
        }

        let title: String
        let date: Date
    }
}

