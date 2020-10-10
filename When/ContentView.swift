//
//  ContentView.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = Event.Store()

    var body: some View {
        List {
            ForEach(store.all.indexed(), id: \.1.id) { index, data in
                WidgetCard(data: self.$store.all[index])
            }
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
    @Binding var data: Event.Data

    var body: some View {
        Event.Widget(data: data)
            .frame(width: 169, height: 169, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 12))
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
