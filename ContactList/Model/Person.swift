//
//  Person.swift
//  ContactList
//
//  Created by Yury on 25.01.23.
//

struct Person {
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getDetails() -> [Person] {
        var firstNamesArray = DataManager.firstName.shuffled()
        var lastNamesArray = DataManager.lastName.shuffled()
        var emailsArray = DataManager.email.shuffled()
        var phonesArray = DataManager.phone.shuffled()
        
        var counter = 0
        var personsArray: [Person] = []
        
        for _ in 1...firstNamesArray.count {
            personsArray.append(Person(firstName: "\(firstNamesArray[counter])", lastName: "\(lastNamesArray[counter])", email: "\(emailsArray[counter])", phone: "\(phonesArray[counter])"))
            counter += 1
        }
        return personsArray
    }
}
