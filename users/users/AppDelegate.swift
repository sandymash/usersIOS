//
//  AppDelegate.swift
//  users
//
//  Created by sandy mashinsky on 13/05/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabbarVC: TabBar?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      // Override point for customization after application launch.
      self.window = UIWindow()
      let vc = TabBar()

      vc.view.backgroundColor = .white
      vc.viewControllers = [
        self.viewController(with: "Red", backgroundColor: .systemRed),
        self.viewController(with: "Green", backgroundColor: .systemGreen),
        self.viewController(with: "Blue", backgroundColor: .systemBlue),
        self.viewController(with: "Yellow", backgroundColor: .systemYellow),
      ]
      vc.selectedTab = 0
      vc.tabbarHeight = 40

      self.tabbarVC = vc
      self.window?.rootViewController = vc
      self.window?.makeKeyAndVisible()
      return true
    }

    func viewController(with name: String, backgroundColor: UIColor) -> UIViewController {
      let vc = UIViewController()
      vc.view.backgroundColor = backgroundColor
      vc.title = name
      vc.view.addSubview(self.toggleTabbarButton)
      return vc
    }
}

