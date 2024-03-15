//
//  chatAppApp.swift
//  chatApp
//
//  Created by 木村朋広 on 2024/03/08.
//

import SwiftUI
import FirebaseCore
//import FirebaseFirestore

// AppDelegateを定義する
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}

@main
struct chatAppApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
        }
    }
}


