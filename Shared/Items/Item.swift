//
//  Item.swift
//  MultiplatformApplication
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct Item: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(systemName: "person.icloud.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Spacer()
            }
            Text("SwiftUI")
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text("Example")
                .font(.footnote)
                .foregroundColor(.white)
        }
        .padding(.all)
        .background(Color.blue, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(20.0)
        .shadow(radius: 10)
    }
}

struct Item_Previews: PreviewProvider {
    static var previews: some View {
        Item()
    }
}
