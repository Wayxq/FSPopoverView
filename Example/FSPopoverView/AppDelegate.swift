//
//  AppDelegate.swift
//  FSPopoverView
//
//  Created by Sheng on 04/02/2022.
//  Copyright © 2023 Sheng. All rights reserved.
//

import UIKit
import FSPopoverView

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let appearance = FSPopoverView.fs_appearance()
        appearance.showsArrow = false
        appearance.showsDimBackground = true
        appearance.shadowColor = UIColor.lightGray
        appearance.shadowRadius = 6
        appearance.shadowOffset = CGSize(width: 0, height: 6)
        appearance.borderWidth = 0
        appearance.borderColor = nil
        
        return true
    }
}

