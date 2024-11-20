//
//  Search.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 06.11.2024.
//

import SwiftUI

struct Search: View {
    
    @State var users = UserModel.users
    
    var body: some View {
        List(users) { user in
            DefaultAvatar(user: user)
        }
    }
}

#Preview {
    Search()
}
