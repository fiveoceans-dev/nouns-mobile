//
//  RectangleCapsuleClipShape.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

// RectangleCapsuleClipShape.swift

import SwiftUI

struct RectangleCapsuleClipShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let radius = min(rect.width, rect.height) / 4
        path.move(to: CGPoint(x: rect.minX, y: rect.minY + radius))
        
        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.minY + radius), radius: radius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
        path.addArc(center: CGPoint(x: rect.maxX - radius, y: rect.minY + radius), radius: radius, startAngle: .degrees(270), endAngle: .degrees(0), clockwise: false)
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.closeSubpath()
        
        return path
    }
}


struct RectangleCapsuleClipShape_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCapsuleClipShape()
    }
}
