//
//  Person.swift
//  ContactList
//
//  Created by Nikolay Trofimov on 17.02.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }

}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared
        
        let names = dataManager.names.shuffled()
        let surnames  = dataManager.surnames.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let emails = dataManager.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phoneNumbers.count, emails.count)
        
        persons = (0..<iterationCount).map {
            Person(
                name: names[$0],
                surname: surnames[$0],
                phoneNumber: phoneNumbers[$0],
                email: emails[$0]
            )
        }
        
        return persons
    }

}

enum Contacts: String {
    case email = "tray"
    case phone = "phone"
}
