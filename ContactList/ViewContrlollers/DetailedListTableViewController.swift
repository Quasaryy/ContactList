//
//  DetailedListTableViewController.swift
//  ContactList
//
//  Created by Yury on 25.01.23.
//

import UIKit

class DetailedListTableViewController: UITableViewController {

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            emailCell.textLabel?.text = contacts[indexPath.section].email
            emailCell.imageView?.image = UIImage(systemName: "at")
            return emailCell
        } else {
            let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            phoneCell.textLabel?.text = contacts[indexPath.section].phone
            phoneCell.imageView?.image = UIImage(systemName: "phone")
            return phoneCell
        }
    }

}
