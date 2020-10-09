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

    var body: some View {
        Form {
            TextField("Title", text: $name)
            DatePicker("When", selection: $date)
        }
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
