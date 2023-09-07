//
//  VoteCountRow.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

import SwiftUI

struct VoteCountRow: View {
    var label: String
    var icon: String
    var color: Color
    var count: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(color)
            Text(count)
                .foregroundColor(color)
        }
        .frame(width: 60, alignment: .leading)
    }
}

struct VoteCountRow_Previews: PreviewProvider {
    static var previews: some View {
        VoteCountRow(label: "STATUS", icon: "star", color: .blue, count: "2")
    }
}

