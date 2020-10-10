//
//  Event+Data.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

extension Event {
    struct Data: Identifiable {
        let id = UUID()
        var title: String
        var date: Date
        var color: Color
    }
}

