//
//  Tab.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 03.11.2024.
//

import SwiftUI

enum Tab: String{
    case home = "Главная"
    case search = "Поиск"
    case rating = "Рейтинг"
    case settings = "Настройки"
    case profile = "Профиль"
    
    @ViewBuilder
    var tabContent: some View{
        switch self {
        case .home:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .rating:
            Image(systemName: "star.circle")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        case .profile:
            Image(systemName: "person")
            Text(self.rawValue)
        }
    }
}
