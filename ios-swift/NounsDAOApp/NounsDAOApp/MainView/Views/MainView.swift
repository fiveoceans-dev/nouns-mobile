//
//  MainView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/07/15.
//

import SwiftUI

enum TabTitle: String, CaseIterable {
    case feed = "Feed"
    case community = "Community"
    case nouns = "Auction"
    case proposals = "Proposals"
    case wallet = "Wallet"
}

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        UIVisualEffectView()
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) {
        uiView.effect = effect
    }
}

struct MainView: View {
    @State private var hasShownIntro = UserDefaults.standard.bool(forKey: "HasShownIntro")

    @StateObject private var auctionViewModel = NounAuctionViewModel(model: NounAuctionModel())
    @State private var selectedIndex = 2
    @State private var title = TabTitle.nouns.rawValue
    
    init() {
        UITabBar.appearance().isTranslucent = true
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()    }
    
    var body: some View {
        ZStack {
            if !hasShownIntro {
                IntroView()
                    .onTapGesture {
                        hasShownIntro = true
                        UserDefaults.standard.set(true, forKey: "HasShownIntro")
                    }
            } else {
                navigation
            }
        }
        .background(VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial)))
        .environmentObject(auctionViewModel)
    }
}

extension MainView {
    var navigation: some View {
        NavigationStack {
            TabView(selection: $selectedIndex) {
                FeedView()
                    .tabItem {
                        Image("noggles.fill")
                            .renderingMode(.template)
                            .foregroundColor(.black)
                    }.tag(0)
                CommunityView()
                    .tabItem {
                        Image(systemName: "circle")
                    }.tag(1)
                NounsView()
                    .tabItem {
                        Image(systemName: "square")
                    }.tag(2)
                NounProposalsParentView()
                    .tabItem {
                        Image(systemName: "triangle")
                    }.tag(3)
                MetaMaskView()
                    .tabItem {
                        Image(systemName: "cross")
                    }.tag(4)
            }
            .onChange(of: selectedIndex) { newValue in
                withAnimation(.easeOut(duration: 0.5)) {
                    title = TabTitle.allCases[newValue].rawValue
                }
            }
            .onChange(of: selectedIndex) { newValue in
                title = TabTitle.allCases[newValue].rawValue
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .frame(width: 18, height: 20)
                            .foregroundColor(.black)
                            .transition(.slide)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    if title == "Feed" {
                        NavigationLink(destination: FeedInfoView()) {
                            infoButton
                        }
                    } else if title == "Community" {
                        NavigationLink(destination: CommunityInfoView()) {
                            infoButton
                        }
                    } else if title == "Auction" {
                        NavigationLink(destination: AuctionInfoView()) {
                            infoButton
                        }
                    } else if title == "Proposals" {
                        NavigationLink(destination: ProposalsInfoView()) {
                            infoButton
                        }
                    } else if title == "Wallet" {
                        NavigationLink(destination: WalletInfoView()) {
                            infoButton
                        }
                    } else {
                        NavigationLink(destination: AuctionInfoView()) {
                            infoButton
                        }
                    }
                }
            }
        }
    }
    
    var infoButton: some View {
        Group {
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 18)
            Image(systemName: "info.circle.fill")
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.black)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(NounAuctionViewModel(model: NounAuctionModel()))
    }
}
