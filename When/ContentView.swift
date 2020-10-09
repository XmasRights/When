//
//  ContentView.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct ContentView: View {
    private var widgetData: [CountdownTimer.Data] {
        let store = CountdownTimer.Store()
        return store.all()
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                ForEach(widgetData) { data in
                    WidgetCard(data: data)
                }
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 24)
        }
    }
}

struct WidgetCard: View {
    @State var showingSheet = false
    let data: CountdownTimer.Data

    var body: some View {
        CountdownTimer.Widget(data: data)
            .frame(width: 200, height: 180, alignment: .center)
            .clipShape(RoundedRectangle.init(cornerRadius: 12))
            .shadow(radius: 12)
            .onTapGesture { self.showingSheet.toggle() }
            .sheet(isPresented: $showingSheet, content: {
                EditSheet(name: data.title, date: data.date)
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(.fixed(width: 480, height: 640))
                .preferredColorScheme(.light)

            ContentView()
                .previewLayout(.fixed(width: 480, height: 640))
                .preferredColorScheme(.dark)
        }
    }
}
