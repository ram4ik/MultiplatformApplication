//
//  ContentView.swift
//  Shared
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder var body: some View {
        #if os(iOS)
        SideBarView()
        #else
        SideBarView()
            .frame(minWidth: 1000, minHeight: 700)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
