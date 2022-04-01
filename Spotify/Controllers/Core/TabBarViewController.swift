//
//  HomeViewController.swift
//  Spotify
//
//  Created by Islam Noureldin on 31/03/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
         let homeVC = HomeViewController()
         let searchVC = SearchViewController()
        let libraryVC = LibraryViewController()
        
        homeVC.title = "Browse"
        searchVC.title = "Search"
        libraryVC.title = "Library"

        homeVC.navigationItem.largeTitleDisplayMode = .always
        searchVC.navigationItem.largeTitleDisplayMode = .always
        libraryVC.navigationItem.largeTitleDisplayMode = .always
        
        let homeNavigation = UINavigationController(rootViewController: homeVC)
        let searchNavigation = UINavigationController(rootViewController: searchVC)
        let libraryNavigation = UINavigationController(rootViewController: libraryVC)
        
        homeNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        searchNavigation.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        libraryNavigation.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 3)
        
        homeNavigation.navigationBar.prefersLargeTitles = true
        searchNavigation.navigationBar.prefersLargeTitles = true
        libraryNavigation.navigationBar.prefersLargeTitles = true
        
        setViewControllers([homeNavigation,searchNavigation,libraryNavigation], animated: false)
        
    }
}
