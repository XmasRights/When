//
//  EditSheet.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct EditSheet: View {
    @Binding var data: Event.Data

    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Event.Widget(data: data)
                        .frame(width: 169, height: 169)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 12)
                    Spacer()
                }
            }

            Section {
                DatePicker("When", selection: $data.date)
            }

            Section {
                TextField("Title", text:  $data.title)
                ColorPicker("Color", selection: $data.color)
            }
        }
    }
}

struct EditSheet_Previews: PreviewProvider {
    @State static var data: Event.Data = .init(
        title: "Hello World",
        date: Date(timeIntervalSinceNow: 420),
        color: .blue
    )

    static var previews: some View {
        EditSheet.init(data: $data)
    }
}
