//
//  Settings.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 03.11.2024.
//

import SwiftUI

struct Settings: View {
    //View Properties
    @State private var changeTheme: Bool = false
    @Environment(\.colorScheme) private var scheme
    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault
    //User Properties
    @AppStorage("userName") private var userName: String = ""
    var body: some View {
        NavigationStack{
            List{
                Section("Имя Пользователя"){
                    TextField("Ваше Имя", text: $userName)
                }
                
                Section("Внешний вид"){
                    Button("Сменить тему"){
                        changeTheme.toggle()
                    }
                }
                
            }
            .navigationTitle("Настройки")
        }
        .preferredColorScheme(userTheme.colorScheme)
        .sheet(isPresented: $changeTheme, content: {
            ThemeChangeView(scheme: scheme)
                .presentationDetents([.height(410)])
                .presentationBackground(.clear)
        })
    }
}

#Preview {
    ContentView()
}
