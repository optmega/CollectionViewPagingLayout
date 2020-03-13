//
//  AppDelegate.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 12/23/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?
    var navigationController: UINavigationController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        navigationController.setViewControllers([MainViewController.instantiate()], animated: false)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
    }

}

