//
//  SettingsView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/07/15.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var isPushNotifications = false
    @State private var isIntroVisible = false
    
    var body: some View {
        ZStack {
            CirclesBlurBackground()
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                SectionHeaderView(text: "UI")
                ToggleButton(label: "Dark Mode", isOn: $isDarkMode)
                    .onChange(of: isDarkMode) { newValue in
                        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                            scene.windows.forEach { window in
                                window.overrideUserInterfaceStyle = newValue ? .dark : .light
                            }
                        }
                    }
                
                SectionHeaderView(text: "Push Notifications")
                ToggleButton(label: "Auction Notifications", isOn: $isPushNotifications)
                if isPushNotifications {
                    PushNotificationInfoView()
                }
                
                SectionHeaderView(text: "Intro Video")
                ToggleButton(label: "Replay Intro", isOn: $isIntroVisible)
                    .onTapGesture {
                        isIntroVisible = false
                    }
                
                Spacer()
            }
            .padding()
            .sheet(isPresented: $isIntroVisible) {
                IntroView()
            }
        }
    }
}


struct ToggleButton: View {
    var label: String
    @Binding var isOn: Bool
    
    var body: some View {
        ZStack {
            BoardCardView(firstColor: Color("a-mono"), secondColor: Color("a-mono"), startPoint: .leading, endPoint: .trailing, opacity: 0.4)
                .frame(height: 50)
            VStack(alignment: .leading, spacing: 10) {
                Toggle(label, isOn: $isOn)
            }
            .padding(10)
        }
    }
}

struct PushNotificationInfoView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color(UIColor.systemGray3))
            .frame(height: 50)
            .overlay(
                Text("Support for Push Notifications is coming soon.")
                    .foregroundColor(.black)
            )
            .padding([.top, .bottom], 5)
    }
}

struct SectionHeaderView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundColor(.primary)
            .padding(.top)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
