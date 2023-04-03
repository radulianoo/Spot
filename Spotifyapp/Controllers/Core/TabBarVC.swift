//
//  TabBarVC.swift
//  Spotifyapp
//
//  Created by Octav Radulian on 03.04.2023.
//

import UIKit

//create the tab bar that will hold all core VC's

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //set the vc
        let vc1 = HomeVC()
        let vc2 = SearchVC()
        let vc3 = LibraryVC()
        //add a title to each VC
        vc1.title = "Browse"
        vc2.title = "Search"
        vc3.title = "Library"
        //for eacv VC set the largeTitle prop
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        //add the navigation
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        //add the tab bar item
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 3)
        //set the large title for the navigation bar
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        //set the VC to the tab bar
        setViewControllers([nav1, nav2, nav3], animated: false)
    }


}
