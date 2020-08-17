//
//  Row.swift
//  MultiplatformApplication
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct Row: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.badge.plus")
                .renderingMode(.original)
                .frame(width: 51, height: 51)
                .imageScale(.large)
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle())
                
            VStack(alignment: .leading) {
                Text("SwiftUI")
                    .font(.system(size: 36, weight: .ultraLight, design: .serif))
                Text("Examples")
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row()
    }
}
