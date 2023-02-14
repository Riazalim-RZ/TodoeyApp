//
//  AppDelegate.swift
//  Destini
//
//  Created by Riaz Alim on 07/11/2022.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Thread.sleep(forTimeInterval: 1.0)
        
       
//        print(Realm.Configuration.defaultConfiguration.fileURL as Any)
        

        
        do {
            _ = try Realm()
        } catch {
            print("Error initialising new realm, \(error)")
        }
        
        
        let navigationController = self.window?.rootViewController as? UINavigationController
        
        //MARK: -  Customizing our navigation bar
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemGreen
        appearance.titleTextAttributes = [.font: UIFont
            .boldSystemFont(ofSize: 25.0),
                                          .foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        return true
    }
    
}

