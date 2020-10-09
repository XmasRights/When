//
//  CountdownWidget.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

extension CountdownTimer {
    struct Widget: View {
        let data: Data

        var body: some View {
            VStack {
                Color.green
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


struct TimerWidget_Previews: PreviewProvider {
    private static let data: CountdownTimer.Data = .init(
        title: "Widget Complete",
        date: .init(timeIntervalSinceNow: 4200)
    )

    static var previews: some View {
        Group {
            CountdownTimer.Widget(data: data)
                .previewLayout(.fixed(width: 200, height: 200))
                .previewDisplayName("Light")
                .preferredColorScheme(.light)

            CountdownTimer.Widget(data: data)
                .previewLayout(.fixed(width: 200, height: 200))
                .previewDisplayName("Dark")
                .preferredColorScheme(.dark)
        }
    }
}
