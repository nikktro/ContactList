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
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared
        
        let names = dataManager.names.shuffled()
        let surnames  = dataManager.surnames.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let emails = dataManager.emails.shuffled()
        
        persons = (0..<dataManager.names.count).map {
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
