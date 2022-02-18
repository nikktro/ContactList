//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Nikolay Trofimov on 17.02.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    private let contactList = MainTabBarController.contactList
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let contact = contactList[indexPath.row]
        
        content.text = contact.fullname
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contactList[indexPath.row]
        performSegue(withIdentifier: "contactDetails", sender: contact)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        contactDetailsVC.contact = sender as? Person
    }
    
}

