//
//  Stores.swift
//  GroceryStoreListExample
//
//  Created by Michael Miles on 6/24/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import Foundation

struct Store {
    var name: String
    var price: String
    var imageName: String
    var items: [String]
}

let walmart = Store(
    name: "WalMart",
    price: "$",
    imageName: "WalmartLogo",
    items: [
        "Dish Soap",
        "Dog Toys",
        "Paper Towels",
        "Shampoo",
        "Super Smash Bros."
    ]
)

let traderJoes = Store(
    name: "Trader Joe's",
    price: "$",
    imageName: "TraderJoesLogo",
    items: [
        "Bananas",
        "Avocados",
        "Peppers",
        "Frozen Dumplings"
    ]
)

let kroger = Store(
    name: "Kroger",
    price: "$$",
    imageName: "KrogerLogo",
    items: [
        "Frosted Mini Wheats",
        "Almond Milk",
        "Bread",
        "Pasta Sauce"
    ]
)

let wholeFoods = Store(
    name: "Whole Foods",
    price: "$$$",
    imageName: "WholeFoodsLogo",
    items: [
        "Vegan Cheese",
        "Veggie Burgers",
        "Salad Mix"
    ]
)

let stores = [walmart, traderJoes, kroger, wholeFoods]
