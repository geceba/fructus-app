//
//  FruitModel.swift
//  rest-api
//
//  Created by Gerardo Cetzal on 29/04/21.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
