//
//  PropHouseView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/06/13.
//  

import SwiftUI

struct PropHouseView: View {
    @ObservedObject var viewModel: PropHouseViewModel

    var body: some View {
        VStack {
            Spacer()
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Active")
                        .bold()
                        .foregroundColor(.black)
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                        ForEach(viewModel.houses) { house in
                           HouseView(house: house)
                                .aspectRatio(0.8, contentMode: .fit)
                                .onTapGesture {

                                }
                        }
                    }
                    
                    PathLine()

                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                        ForEach(viewModel.houses) { house in
                           HouseView(house: house)
                                .aspectRatio(0.8, contentMode: .fit)
                                .onTapGesture {
                                    
                                }
                        }
                    }
                }
            }
        }
        .padding(5)
    }
}

struct HouseView: View {
    var house: PropHouseModel<String>.House
    var body: some View {
        VStack {
            ZStack {
                let button = RoundedRectangle(cornerRadius: 15.0)
                if house.isFaceUp {
                    button.fill().foregroundColor(.white)
                    button.strokeBorder(lineWidth: 3)
                    Text(house.content).foregroundColor(.black)
                } else if house.isMatched {
                    button.opacity(0)
                } else {
                    button.fill()
                }
            }
            .foregroundColor(.purple).opacity(0.6)
            ZStack {
                Text("ff").foregroundColor(.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let prophouseapp = PropHouseViewModel()
        PropHouseView(viewModel: prophouseapp)
            .preferredColorScheme(.light)
        PropHouseView(viewModel: prophouseapp)
            .preferredColorScheme(.dark)
    }
}



