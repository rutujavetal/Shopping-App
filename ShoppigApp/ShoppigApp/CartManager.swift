//
//  CartManager.swift
//  ShoppigApp
//
//  Created by Rutuja Vetal on 05/07/23.
//

import SwiftUI

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total = total + product.price
    }
    
    func removeTheProduct(product: Product) {
        products = products.filter{ $0.id != product.id}
        total = total - product.price
    }
}


