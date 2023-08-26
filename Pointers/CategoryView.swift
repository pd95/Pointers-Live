//
//  CategoryView.swift
//  Pointers
//
//  Created by Philipp on 26.08.23.
//

import SwiftUI

struct CategoryView: View {
    @Environment(\.dismiss) private var dismiss

    let category: Category
    let columns: [GridItem] = [.init(.adaptive(minimum: 100, maximum: 200))]

    let selection: (String) -> Void

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(category.items, id: \.self) { item in
                    Button {
                        selection(item)
                        dismiss()
                    } label: {
                        ItemView(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .navigationTitle(category.id)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static let categories = Bundle.main.decode([Category].self, from: "Items.json")

    static var previews: some View {
        CategoryView(category: categories[0], selection: { _ in })
    }
}
