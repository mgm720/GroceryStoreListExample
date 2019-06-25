//
//  ItemTableViewController.swift
//  GroceryStoreListExample
//
//  Created by Michael Miles on 6/25/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    var selectedStore : Store? {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return selectedStore?.items.count ?? 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)

        cell.textLabel?.text = selectedStore?.items[indexPath.row]

        return cell
    }

}
