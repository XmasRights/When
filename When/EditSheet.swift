//
//  EditSheet.swift
//  When
//
//  Created by Christopher Fonseka on 09/10/2020.
//

import SwiftUI

struct EditSheet: View {
    @Binding var data: CountdownStore.Entry

    private var widgetData: CountdownTimer.Data {
        .init(title: data.title, date: data.date)
    }

    var body: some View {
        VStack {
            CountdownTimer.Widget(data: widgetData)
                .frame(width: 300, height: 160)

            Form {
                Section {
                    TextField("Title", text:  $data.title)
                    DatePicker("When", selection: $data.date)
                }
            }
        }
        .padding()
    }
}

//struct EditSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        EditSheet(
//            name: "",
//            date: Date()
//        )
//    }
//}
