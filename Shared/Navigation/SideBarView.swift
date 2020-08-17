//
//  SideBarView.swift
//  MultiplatformApplication
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct SideBarView: View {
    
    @ViewBuilder var body: some View {
        NavigationView {
            #if os(iOS)
            content
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "gear")
                    }
                }
            #else
            content
                .frame(minWidth: 300, idealWidth: 350, maxWidth: 400)
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Image(systemName: "gear")
                    }
                }
            #endif
        }
    }
    
    var content: some View {
        List {
            NavigationLink(destination: BookView()) {
                Label("Book", systemImage: "book.closed")
            }
            NavigationLink(destination: ListView()) {
                Label("List", systemImage: "list.bullet.rectangle")
            }
            NavigationLink(destination: TvView()) {
                Label("TV", systemImage: "tv")
            }
            NavigationLink(destination: MailView()) {
                Label("Mail", systemImage: "mail.stack")
            }
            NavigationLink(destination: SearchView()) {
                Label("Search", systemImage: "magnifyingglass")
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
