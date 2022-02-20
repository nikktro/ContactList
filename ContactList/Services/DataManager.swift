//
//  DataManager.swift
//  ContactList
//
//  Created by Nikolay Trofimov on 17.02.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = ["Judith", "Carlos", "Russell", "Louis", "Christine", "Rebecca", "David", "Benjamin", "Raymond", "Edward"]
    let surnames = ["Bailey", "Young", "Jenkins", "Nelson", "Bell", "Smith", "Clark", "Martinez", "Henderson", "Anderson"]
    let phoneNumbers = ["555-8157", "555-7147", "555-5768", "555-6816", "555-2539", "555-6065", "555-6196", "555-3344", "555-2160", "555-8814"]
    let emails = ["aaa@protonmail.com", "bbb@zoho.com", "ccc@outlook.com", "ddd@gmail.com", "eee@yahoo.com", "fff@icloud.com", "ggg@aol.com", "hhh@gmx.com", "iii@yandex.com", "jjj@mail.com"]
    
    private init() {}
}
