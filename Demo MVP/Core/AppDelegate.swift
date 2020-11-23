//
//  AppDelegate.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationContoller = UINavigationController(rootViewController: QuranVC())
        
        navigationContoller.navigationBar.topItem?.title = "Quran"
        navigationContoller.navigationBar.barTintColor = .gray
        window?.backgroundColor = .white
        self.window?.rootViewController = navigationContoller
        self.window?.makeKeyAndVisible()
        return true
    }
}

