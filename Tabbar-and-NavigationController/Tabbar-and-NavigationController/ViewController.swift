//
//  ViewController.swift
//  Tabbar-and-NavigationController
//
//  Created by Gamze Akyüz on 9.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let anaSayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anaSayfaItem.badgeValue = "1"
            ayarlarItem.badgeValue = "New"
            
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor.systemFill
            colorChange(itemAppearance: appearance.stackedLayoutAppearance)
            colorChange(itemAppearance: appearance.inlineLayoutAppearance)
            colorChange(itemAppearance: appearance.compactInlineLayoutAppearance)

            tabBarController?.tabBar.standardAppearance = appearance
            tabBarController?.tabBar.scrollEdgeAppearance = appearance
            
        }
        
    }
    func colorChange(itemAppearance: UITabBarItemAppearance) {
//        the selected one
        itemAppearance.selected.iconColor = UIColor.systemBlue
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.black]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
//        unselected
        itemAppearance.normal.iconColor = UIColor.red
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }


}

