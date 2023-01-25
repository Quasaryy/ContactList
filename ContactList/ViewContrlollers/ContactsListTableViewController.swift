//
//  ContactsListTableViewController.swift
//  ContactList
//
//  Created by Yury on 25.01.23.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailsViewController
        guard let index = tableView.indexPathForSelectedRow?.row else { return }
        detailsVC?.person = contacts[index]
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].fullName

        return cell
    }

}
