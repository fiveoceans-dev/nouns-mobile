//
//  NotificationsView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/07/15.
//

import SwiftUI
import WebKit

struct TriviaView: View {
    var body: some View {
        
        ZStack {
            VStack {
                //Video
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, maxHeight: 350)
                        .foregroundColor(.green)
                }
                
                // Question
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .foregroundColor(.yellow)
                    VStack(alignment: .leading) {
                        Text("Which founding father is often referred to as the 'Father of His Country' and served as the first President of the United States?")
                            .font(.title3)
                            .padding(5)
                    }
                }
                //Answers
                VStack(alignment: .leading) {
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 15)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundColor(.mint)
                        Text("A: George Washington")
                            .font(.title3)
                            .padding(10)
                    }
                    
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 15)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundColor(.mint)
                        Text("B: Thomas Jefferson")
                            .font(.title3)
                            .padding(10)
                    }
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 15)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundColor(.mint)
                        Text("C: Benjamin Franklin")
                            .font(.title3)
                            .padding(10)
                    }
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 15)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .foregroundColor(.mint)
                        Text("D: John Adams")
                            .font(.title3)
                            .padding(10)
                    }
                }
                Spacer()
            }
            .padding(5)
        }
    }
}



struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
    }
}
