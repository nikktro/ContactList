//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Nikolay Trofimov on 18.02.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullname
        phoneNumberLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }
    
}
