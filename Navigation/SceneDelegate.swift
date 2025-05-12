//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Максим Камышев on 12.05.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        
        let tabBarController = UITabBarController()
        
        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        
        let controllers = [feedViewController, profileViewController]
        tabBarController.viewControllers = controllers.map{
            UINavigationController(rootViewController: $0)
        }
        
        feedViewController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "house"), tag: 0)
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 1)
        
        tabBarController.selectedIndex = 1
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        self.window = window
        
        
        
    }

}

