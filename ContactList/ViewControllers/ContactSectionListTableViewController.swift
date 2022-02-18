//
//  ContactSectionListTableViewController.swift
//  ContactList
//
//  Created by Nikolay Trofimov on 18.02.2022.
//

import UIKit

class ContactSectionListTableViewController: UITableViewController {

    private let contactList = MainTabBarController.contactList
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactSectionList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let contact = contactList[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
}
