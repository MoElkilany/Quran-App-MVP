//
//  AppDelegate.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit
import IQKeyboardManagerSwift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        let navigationContoller = UINavigationController(rootViewController: LoginVC())
        navigationContoller.navigationBar.barTintColor = .orange
        navigationContoller.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        window?.backgroundColor = .white
        self.window?.rootViewController = navigationContoller
        self.window?.makeKeyAndVisible()
        return true
    }
}

