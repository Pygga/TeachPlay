//
//  Home.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 06.11.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        GeometryReader{
            // For Animation Purpose
            let size = $0.size
            
            NavigationStack{
                ScrollView(.vertical){
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]){
                        Section {
                            Button(action: {
                                //eerfe
                            }, label: {Text("Список")})
                            .hSpacing(.leading)
                        }
                        .padding(15)
                    }
                    .background(.gray.opacity(0.15))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
