//
//  EditSheet.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct EditSheet: View {
    @State var name: String
    @State var date: Date

    var data: CountdownTimer.Data {
        .init(title: name, date: date)
    }

    var body: some View {
        VStack {
            CountdownTimer.Widget(data: data)
                .frame(width: 300, height: 160)

            Form {
                Section {
                    TextField("Title", text: $name)
                    DatePicker("When", selection: $date)
                }
            }
        }
        .padding()
    }
}

struct EditSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditSheet(
            name: "",
            date: Date()
        )
    }
}
