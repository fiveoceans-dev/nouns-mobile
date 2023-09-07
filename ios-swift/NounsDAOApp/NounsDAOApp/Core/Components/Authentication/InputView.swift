//
//  InputView.swift
//  FirebaseAuthentication
//
//  Created by PAVEL on 2023/07/30.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.footnote)
                .font(.system(size:16))
                .fontWeight(.semibold)
                .foregroundColor(Color(.black))
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size:16))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 16))
            }
            Divider()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
    }
}
