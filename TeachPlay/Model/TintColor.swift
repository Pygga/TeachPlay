//
//  TintColor.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 03.11.2024.
//

import SwiftUI

// Custom Tint Color For Transaction Row

struct TintColor: Identifiable{
    let id: UUID = .init()
    var color: String
    var value: Color
}

var tints: [TintColor] = [
    .init(color: "Red", value: .red),
    .init(color: "Blue", value: .blue),
    .init(color: "Pink", value: .pink),
    .init(color: "Purple", value: .purple),
    .init(color: "Brown", value: .brown),
    .init(color: "Orange", value: .orange)
]
