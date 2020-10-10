//
//  Event+Store.swift
//  When
//
//  Created by Christopher Fonseka on 10/10/2020.
//

import Foundation

extension Event {
    class Store: ObservableObject {
        @Published var all: [Data] = [
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
