//
//  Category.swift
//  Pointers
//
//  Created by Philipp on 26.08.23.
//

import Foundation

struct Category: Decodable, Hashable, Identifiable {
    var id: String
    var items: [String]
}
