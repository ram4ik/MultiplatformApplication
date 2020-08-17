//
//  RowView.swift
//  MultiplatformApplication
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct RowView: View {
    
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 900, minHeight: 700)
        #endif
    }
    
    var content: some View {
        List(0..<42) { item in
            Row()
        }
        .navigationTitle("SwiftUI")
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
