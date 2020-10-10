//
//  Event+Data.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

extension Event {
    class Data: Identifiable {
        let id: UUID
        var title: String
        var date: Date
        var color: Color

        init(title: String, date: Date, color: Color) {
            self.id = .init()
            self.title = title
            self.date = date
            self.color = color
        }
    }
}

