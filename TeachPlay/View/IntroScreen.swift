//
//  IntroScreen.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 03.11.2024.
//

import SwiftUI

struct IntroScreen: View {
    // Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing:15){
            Text("Что нового в \n приложении")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding(.top,65)
                .padding(.bottom,65)
            
            //Points View
            VStack(alignment: .leading,spacing: 25, content: {
                PointView(symbol: "pc", title: "Программирование", subTitle: "Если рядом нет PC, телефон всегда под рукой")
                PointView(symbol: "trophy", title: "Рейтинг", subTitle: "Отслеживайте свой рейтинг")
                PointView(symbol: "magnifyingglass", title: "Расширенные фильтры", subTitle: "Найдите нужные вам задачи с помощью предварительного поиска и фильтрации")
            })
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.horizontal, 15)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Продолжить")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
    }
    
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View{
        HStack(spacing: 20){
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            })
        }
    }
}

#Preview {
    IntroScreen()
}
