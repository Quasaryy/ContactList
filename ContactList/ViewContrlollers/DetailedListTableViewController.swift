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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = contacts[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "at")
            return cell
        } else {
            cell.textLabel?.text = contacts[indexPath.section].phone
            cell.imageView?.image = UIImage(systemName: "phone")
            return cell
        }
    }

}
