//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Nikolay Trofimov on 18.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else { return }
        guard let contactSectionVC = viewControllers?.last as? ContactSectionListTableViewController else { return }
        
        contactListVC.persons = persons
        contactSectionVC.persons = persons
    }

}
