//
//  DefaultAvatar.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 06.11.2024.
//

import SwiftUI

struct DefaultAvatar: View {
    var user: UserModel
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack {
            let name = String(user.fullName[user.fullName.startIndex]) + String(user.fullName.split(separator: " ")[1][user.fullName.split(separator: " ")[1].startIndex])
            
            ZStack {
                Circle().frame(width: 50, height: 50)
                Text(name).foregroundColor(colorScheme == .light ? Color.white : Color.black)
            }
            Spacer().frame(width: 12)
            Text(user.fullName)
        }
    }
}
