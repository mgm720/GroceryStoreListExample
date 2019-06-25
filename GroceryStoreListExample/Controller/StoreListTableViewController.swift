//
//  StoreListTableViewController.swift
//  GroceryStoreListExample
//
//  Created by Michael Miles on 6/24/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class StoreListTableViewController: UITableViewController {
    
    @IBOutlet var storeTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func setupTableView() {
        storeTableView.rowHeight = UITableView.automaticDimension
        storeTableView.estimatedRowHeight = 100
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "storeCell", for: indexPath) as! StoreTableViewCell
        
        let storeItem = stores[indexPath.row]

        cell.storeNameLabel.text = storeItem.name
        cell.storePriceLabel.text = storeItem.price
        cell.storeImageView.image = UIImage(named: "\(storeItem.imageName)")

        return cell
    }

    
    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToItems", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ItemTableViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedStore = stores[indexPath.row]
        }
    }
 

}
