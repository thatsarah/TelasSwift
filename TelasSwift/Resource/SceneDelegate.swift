//
//  SceneDelegate.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-08 on 08/12/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let blueViewController = BlueViewController()
        
        window.rootViewController = blueViewController
        window.makeKeyAndVisible()
        self.window = window
        
        let navigationController = UINavigationController()
        self.window?.rootViewController = navigationController
        let coordinator = BlueCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}


   
