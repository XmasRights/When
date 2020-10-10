//
//  Event+Widget.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

extension Event {
    struct Widget: View {
        let data: Data

        var body: some View {
            ZStack {
                Color("BackgroundColor", bundle: .main)

                VStack {
                    data.color
                        .overlay(
                            HStack {
                                Text(data.date, style: .relative)
                                    .bold()
                                    .padding(.horizontal, 12)
                                    .font(.largeTitle)
                                Spacer()
                            }
                        )

                    HStack {
                        Text(data.title)
                            .font(.caption)
                            .padding(.horizontal, 12)

                        Spacer()
                    }

                    Spacer()
                }
            }
        }
    }
}


struct TimerWidget_Previews: PreviewProvider {
    private static let data: Event.Data = .init(
        title: "Widget Complete",
        date: .init(timeIntervalSinceNow: 4200),
        color: .purple
    )

    static var previews: some View {
        Group {
            Event.Widget(data: data)
                .previewLayout(.fixed(width: 200, height: 200))
                .previewDisplayName("Light")
                .preferredColorScheme(.light)

            Event.Widget(data: data)
                .previewLayout(.fixed(width: 200, height: 200))
                .previewDisplayName("Dark")
                .preferredColorScheme(.dark)
        }
    }
}
