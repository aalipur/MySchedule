//
//  ViewController.swift
//  MySchedule
//
//  Created by Анатолий Алипур on 28.02.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    func setupTabBar() {
        let scheduleViewController = createNavController(vc: ScheduleViewController(), itemName: "Schedule", itemImage: "list.bullet")
        let tasksViewController = createNavController(vc: TasksViewController(), itemName: "Tasks", itemImage: "increase.indent")
        let contactsViewController = createNavController(vc: ContactsViewController(), itemName: "Contacts", itemImage: "person.2.crop.square.stack")
        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
    }

    func createNavController( vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem( title: itemName, image: UIImage(systemName: itemImage), tag: 0)
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
    }
}

