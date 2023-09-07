//
//  SettingsRowView.swift
//  FirebaseAuthentication
//
//  Created by PAVEL on 2023/07/30.
//

import SwiftUI

struct SettingsRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    let textColor: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            Text(title)
                .font(.subheadline)
                .foregroundColor(textColor)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(imageName: "gear", title: "Version", tintColor: Color("a-mono"), textColor: Color("a-mono"))
    }
}
