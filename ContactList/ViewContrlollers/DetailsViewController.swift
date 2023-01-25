//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Yury on 25.01.23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    // MARK: - Properties
    var person: Person!

    // MARK: - Override Metdos
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
    }

}

// MARK: - Table view data source
extension DetailsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            emailCell.textLabel?.text = "Email: \(person.email)"
            return emailCell
        } else {
            let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            phoneCell.textLabel?.text = "Phone: \(person.phone)"
            return phoneCell
        }
    }
    
}
