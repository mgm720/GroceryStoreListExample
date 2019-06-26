//
//  StoreListTableViewController.swift
//  GroceryStoreListExample
//
//  Created by Michael Miles on 6/24/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class StoreListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        //Mark: Accessibility
        cell.storeNameLabel.isAccessibilityElement = true
        
        cell.storeImageView.isAccessibilityElement = true
        cell.storeImageView.accessibilityTraits = .image
        cell.storeImageView.accessibilityLabel = "\(storeItem.name) Logo"
        
        cell.storePriceLabel.isAccessibilityElement = true
        cell.storePriceLabel.accessibilityLabel = "Price Level"
        cell.storePriceLabel.accessibilityValue = "\(storeItem.price.count) out of 3"

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
