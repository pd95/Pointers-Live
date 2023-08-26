//
//  ItemView.swift
//  Pointers
//
//  Created by Philipp on 26.08.23.
//

import SwiftUI

struct ItemView: View {
    var item: String

    var body: some View {
        VStack {
            Image(item)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(radius: 3)

            Text(item)
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: "Happy")
    }
}
