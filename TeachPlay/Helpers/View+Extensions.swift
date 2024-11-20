//
//  View+Extensions.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 03.11.2024.
//

import SwiftUI

extension View{
    @ViewBuilder
    func hSpacing(_ aligment: Alignment = .center) -> some View{
        self
            .frame(maxWidth: .infinity,alignment: aligment)
    }
    
    @ViewBuilder
    func vSpacing(_ aligment: Alignment = .center) -> some View{
        self
            .frame(maxHeight: .infinity,alignment: aligment)
    }
    
    @available(iOSApplicationExtension, unavailable)
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene){
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        return .zero
    }
}


extension String { 
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}
