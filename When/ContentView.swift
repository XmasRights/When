//
//  ContentView.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct ContentView: View {
    var widgetData: [CountdownTimer.Data] {
        let store = CountdownTimer.Store()
        return store.all()
    }

    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 24) {
                ForEach(widgetData) { data in
                    CountdownTimer.Widget(data: data)
                        .frame(width: 200, height: 100, alignment: .center)
                        .clipShape(RoundedRectangle.init(cornerRadius: 12))
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
