//
//  Profile.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 06.11.2024.
//

import SwiftUI

struct Profile: View {
    var user_avatar = ""
    @State private var userName: String = "Алексей Алексеевич"
    @State private var userCountry: String = "Россия"
    @State private var userRating: Float = 4.5
    @State private var lastCompletedTask: String = "Создание приложения на SwiftUI"
    
    // Флаг для отображения экрана редактирования
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Аватар пользователя
                DefaultAvatar(user: .init(fullName: userName)) // замените на имя изображения вашего аватара
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 100)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color.blue, lineWidth: 3)) // Обводка аватара
                    .shadow(radius: 10) // Тень для аватара
//                    .padding(.top, 40)

                // Имя пользователя
//                Text(userName)
//                    .font(.largeTitle)
                    .fontWeight(.bold)
//                    .foregroundColor(Color.blue)
                    .padding(.top, 8)

                // Рейтинг пользователя
                Text("Рейтинг: \(userRating, specifier: "%.1f") из 5")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .padding(.top, 4)

                // Последнее выполненное задание
                Text("Последнее задание:")
                    .font(.headline)
                    .foregroundColor(Color.blue)
                    .padding(.top, 16)

                Text(lastCompletedTask)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white) // Фон для текста задания
                    .cornerRadius(10) // Закругленные углы
                    .shadow(radius: 5) // Тень для текста задания
                    .padding([.leading, .trailing], 20)

                // Кнопка редактирования профиля
                Button(action: {
                    isEditing.toggle()
                }) {
                    Text("Редактировать профиль")
                        .fontWeight(.medium)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5) // Тень для кнопки
                }
                .padding(.top, 20)
                .padding([.leading, .trailing], 20)

                Spacer() // Для добавления пространства внизу
            }
            .navigationTitle("Профиль")
            .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
//                    .sheet(isPresented: $isEditing) {
//                        EditProfileView(userName: $userName, userCountry: $userCountry, userRating: $userRating)
//                    }
                    
                    Spacer()
                }
            }
        }


#Preview {
    Profile()
}
