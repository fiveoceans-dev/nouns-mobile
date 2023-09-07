//
//  VerticalLabel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/15.
//

import SwiftUI

struct VerticalLabel: View {
    var text: Text
    var direction: Int

    var body: some View {
        VerticalLayout() {
            text
        }
        .rotationEffect(.degrees(Double(direction * 90)))
    }

    private struct VerticalLayout: Layout {
        func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
            let size = subviews.first!.sizeThatFits(.unspecified)
            return .init(width: size.height, height: size.width)
        }

        func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
            subviews.first!.place(at: .init(x: bounds.midX, y: bounds.midY), anchor: .center, proposal: .unspecified)
        }
    }
}


struct VerticalLabel_Previews: PreviewProvider {
    static var previews: some View {
        VerticalLabel(text: Text("Preview Text"), direction: -1)
    }
}





