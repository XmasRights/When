//
//  CountdownTimerStore.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import Foundation

extension CountdownTimer {
    struct Store {
        func all() -> [Data] {
            // TODO: get from backend

            return [
                .init(title: "PS5 🚀", date: .ps5Launch),
                .init(title: "Xbox Series X 🚀", date: .xboxLaunch)
            ]
        }

        func store(data: [Data]) {
            // TODO: Store into backend
        }
    }
}

extension Date {
    static var ps5Launch: Date {
        let components = DateComponents(
            year: 2002, month: 11, day: 12
        )
        return Calendar.current.date(from: components)!
    }

    static var xboxLaunch: Date {
        let components = DateComponents(
            year: 2002, month: 11, day: 10
        )
        return Calendar.current.date(from: components)!
    }
}
