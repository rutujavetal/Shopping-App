//
//  Product.swift
//  ShoppigApp
//
//  Created by Rutuja Vetal on 04/07/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList =  [Product(name: "Drak Orange", image: "Sweater1", price: 675),
                   Product(name: "Pink", image: "Sweater2", price: 900),
                   Product(name: "Yellow", image: "Sweater3", price: 835),
                   Product(name: "Blue", image: "Sweater4", price: 695),
                   Product(name: "Red", image: "Sweater5", price: 905),
                   Product(name: "Purple", image: "Sweater6", price: 865),
                   Product(name: "White", image: "Sweater7", price: 820),
                   Product(name: "Orange", image: "Sweater8", price: 666)]
