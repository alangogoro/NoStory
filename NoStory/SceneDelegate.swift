//
//  SceneDelegate.swift
//  NoStory
//
//  Created by usr on 2020/12/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    /* ‼️⭐️ 記得要刪除 plist 內 Application Scene Manifest 下的 Storyboard 欄位 ⭐️‼️ */
    /* 🔰⭐️ window.rootViewController 屬性決定了首頁 ⭐️ */
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        /* ➡️ 建立 window */
        guard let windowScene = (scene as? UIWindowScene) else { return }
        /* ⚠️ 確保 window 的尺寸和螢幕大小完全相等。或使用 UIScreen.main.bounds */
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        /* ➡️ 設置 windowScene */
        window?.windowScene = windowScene
        
        /* ➡️ 生成並設定 TabBarController 及其頁籤 */
        let mainTab = MainTabBarController()
        let mainNav = MainNavigationController()
        let secondTab = SecondaryTabViewController()
        mainTab.viewControllers = [mainNav, secondTab]
        
        // 設定 NavigationController 的首頁
        let mainVC = MainViewController()
        mainNav.viewControllers = [mainVC]
        // 自訂標題
        mainNav.title = "MainNav"
        secondTab.title = "SecondTab"
        mainVC.title = "MainVC"
        
        /* 🔰⭐️ 設定 window 首頁並呈現 */
        window?.rootViewController = mainTab
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }
    
}

