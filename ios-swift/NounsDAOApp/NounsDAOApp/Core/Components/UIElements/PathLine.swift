//
//  PathLine.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/07.
//

import SwiftUI

struct PathLine: View {
    var body: some View {
        Path { path in
            // Define your path here
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: .max, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 1))
            path.closeSubpath()
        }
        .foregroundColor(.purple) // Set the color of the path
    }
}

struct PathLine_Previews: PreviewProvider {
    static var previews: some View {
        PathLine()
    }
}
