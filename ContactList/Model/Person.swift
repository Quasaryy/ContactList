//
//  Person.swift
//  ContactList
//
//  Created by Yury on 25.01.23.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getDetails() -> [Person] {
        let firstNamesArray = DataManager.firstName.shuffled()
        let lastNamesArray = DataManager.lastName.shuffled()
        let emailsArray = DataManager.email.shuffled()
        let phonesArray = DataManager.phone.shuffled()
        
        var personsArray: [Person] = []
        
        for counter in 0..<firstNamesArray.count {
            personsArray.append(Person(firstName: "\(firstNamesArray[counter])", lastName: "\(lastNamesArray[counter])", email: "\(emailsArray[counter])", phone: "\(phonesArray[counter])"))
        }
        return personsArray
    }
}

let contacts = Person.getDetails()
