//
//  UserModel.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 06.11.2024.
//

import SwiftUI
import Foundation

struct UserModel: Identifiable {
    let id = UUID()
    let fullName: String
}

extension UserModel { // Для теста DefaultAvatar
    static let users = [
        UserModel(fullName: "Abel Thomas"),
        UserModel(fullName: "King Farley"),
        UserModel(fullName: "Amiah Hurley"),
        UserModel(fullName: "Thomas Lloyd"),
    ]
}
