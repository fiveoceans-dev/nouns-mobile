//
//  BoardCardView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/07/18.
//
// 

import SwiftUI

struct BoardCardView: View {
    
    var firstColor: Color = Color(.blue)
    var secondColor: Color = Color(.white)
    var startPoint: UnitPoint = .top
    var endPoint: UnitPoint = .bottom
    var opacity: Double = 0.6
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: startPoint, endPoint: endPoint)
            .opacity(1)
            .cornerRadius(15)
            .ignoresSafeArea()
    }
}

struct BoardCardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardCardView()
    }
}
