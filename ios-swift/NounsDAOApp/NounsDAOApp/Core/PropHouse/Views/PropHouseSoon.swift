//
//  PropHouseSoon.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/08.
//

import SwiftUI

struct PropHouseSoon: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Comming Soon!")
                .bold()
                .font(.title)
                .foregroundColor(.purple)
            Image("PropHouse")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
        }
    }
}

struct PropHouseSoon_Previews: PreviewProvider {
    static var previews: some View {
        PropHouseSoon()
    }
}
