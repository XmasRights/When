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
                Event.Widget(data: data)
                    .frame(width: 300, height: 160)
            }

            Section {
                TextField("Title", text:  $data.title)
                DatePicker("When", selection: $data.date)
            }
        }
    }
}

struct EditSheet_Previews: PreviewProvider {
    @State static var data: Event.Data = .init(
        title: "Hello World",
        date: Date(timeIntervalSinceNow: 420)
    )

    static var previews: some View {
        EditSheet.init(data: $data)
    }
}
