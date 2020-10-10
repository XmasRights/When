//
//  CountdownStore.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

enum CountdownStore {}

extension CountdownStore {
    class Entry: Identifiable {
        let id: UUID
        var title: String
        var date: Date

        init(title: String, date: Date) {
            self.id = .init()
            self.title = title
            self.date = date
        }
    }

    class Library: ObservableObject {
        @Published var all: [Entry] = [
            .init(title: "PS5 Launch", date: .ps5Launch),
            .init(title: "Xbox Launch", date: .xboxLaunch)
        ]
    }
}

private extension Date {
    static var ps5Launch: Date {
        let components = DateComponents(
            year: 2020, month: 11, day: 12
        )
        return Calendar.current.date(from: components)!
    }

    static var xboxLaunch: Date {
        let components = DateComponents(
            year: 2020, month: 11, day: 10
        )
        return Calendar.current.date(from: components)!
    }
}

