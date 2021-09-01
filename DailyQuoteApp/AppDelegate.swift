//
//  AppDelegate.swift
//  DailyQuoteApp
//
//  Created by Malik Farhan Asim on 05/07/2021.
//

import UIKit
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let notificationCenter = UNUserNotificationCenter.current()
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: HomeViewController())
        window?.makeKeyAndVisible()
        
        notificationCenter.delegate = self
        registerLocalNotification()
        checkAppLaunch()
        return true
    }
    
    
    func checkAppLaunch() {
        if !UserDefaults.standard.bool(forKey: CustomuserDefaults.firstLaunch) { // app first launches
            UserDefaults.standard.setValue(true, forKey: CustomuserDefaults.firstLaunch)
            DataManager.shared.loadAllQuotesIntoUserDefaultArray()
        }
    }
}

extension AppDelegate : UNUserNotificationCenterDelegate{
    
    func registerLocalNotification() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        notificationCenter.requestAuthorization(options: options) {
            (didAllow, error) in
            if !didAllow {
                print("User has declined notifications")
            }
        }
    }
    //Handle Notification Center Delegate methods
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .sound])
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.notification.request.identifier == "Local Notification" {
            print("Handling notifications with the Local Notification Identifier")
        }
        completionHandler()
    }
}
