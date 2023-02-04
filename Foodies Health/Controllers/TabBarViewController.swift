//
//  TabBarViewController.swift
//  Foodies Health
//
//  Created by LPW on 30/01/2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpControllers()
    }
    

    private func setUpControllers() {
        guard let currentUserEmail = UserDefaults.standard.string(forKey: "email") else {
            return
        }
         
     let home = ViewController()
        home.title = "Home"
    let profile = ProfileViewController(currentEmail: currentUserEmail)
        profile.title = "Profile"
    let favourites = FavouritesViewController()
        favourites.title = "Favourites"
        
        home.navigationItem.largeTitleDisplayMode = .always
        profile.navigationItem.largeTitleDisplayMode = .always
        favourites.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: profile)
        let nav3 = UINavigationController(rootViewController: favourites)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Favourites", image: UIImage(systemName: "star.circle.fill"), tag: 3)
    
    setViewControllers([nav1, nav2, nav3], animated: true)
    }
}
