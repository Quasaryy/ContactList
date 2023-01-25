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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = "Email: \(person.email)"
            return cell
        } else {
            cell.textLabel?.text = "Phone: \(person.phone)"
            return cell
        }
    }
    
}
