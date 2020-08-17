//
//  RowView.swift
//  MultiplatformApplication
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        List(0..<42) { item in
            Row()
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
