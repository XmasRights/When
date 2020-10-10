//
//  ContentView.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = CountdownStore.Library()

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                ForEach(store.all.indexed(), id: \.1.id) { index, data in
                    WidgetCard(data: self.$store.all[index])
                }
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 24)
        }
    }
}

extension Sequence {
    func indexed() -> Array<(offset: Int, element: Element)> {
        return Array(enumerated())
    }
}

struct WidgetCard: View {
    @State var showingSheet = false

    @Binding var data: CountdownStore.Entry

    var widgetData: CountdownTimer.Data {
        .init(title: data.title, date: data.date)
    }

    var body: some View {
        CountdownTimer.Widget(data: widgetData)
            .frame(width: 200, height: 180, alignment: .center)
            .clipShape(RoundedRectangle.init(cornerRadius: 12))
            .shadow(radius: 12)
            .onTapGesture { self.showingSheet.toggle() }
            .sheet(isPresented: $showingSheet, content: {
                EditSheet(data: $data)
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
