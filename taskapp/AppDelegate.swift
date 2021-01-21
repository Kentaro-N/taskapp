//
//  AppDelegate.swift
//  taskapp
//
//  Created by 西方健太郎 on 2021/01/14.
//  Copyright © 2021 idea. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    // 色
    let tealblueColor = UIColor(red: 90.0/255.0, green: 200.0/255.0, blue: 250.0/255.0, alpha:1)
    let whiteColor = UIColor(red: 236.0/255.0, green: 254.0/255.0, blue: 234.0/255.0, alpha:1)
    let gray6Color = UIColor(red: 28/255.0, green: 28.0/255.0, blue: 30.0/255.0, alpha:1)


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // ユーザに通知の許可を求める --- ここから ---
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            // Enable or disable features based on authorization
        } // --- ここまで追加 ---
        center.delegate = self     // 追加
        
        
        // ① ナビゲーションバーの背景色
        UINavigationBar.appearance().barTintColor = tealblueColor

        // ② ナビゲーションバーのタイトルの色
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: whiteColor]

        // ③ ナビゲーションバー上のアイテムの色
        UINavigationBar.appearance().tintColor = gray6Color
        
        return true
        
    }
    
    // アプリがフォアグラウンドの時に通知を受け取ると呼ばれるメソッド --- ここから ---
        func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler([.alert, .sound])
        } // --- ここまで追加 ---

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

