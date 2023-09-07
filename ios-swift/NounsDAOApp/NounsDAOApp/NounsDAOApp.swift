//
//  NounsDAOAppApp.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/06/13.
//  MemorizeApp



import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    return true
  }
}

@main
struct NounsDAOApp: App {
    let auctionViewModel = NounAuctionViewModel(model: NounAuctionModel())

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
        
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(auctionViewModel)
        }
    }
}
