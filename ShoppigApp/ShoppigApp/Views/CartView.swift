//
//  CartView.swift
//  ShoppigApp
//
//  Created by Rutuja Vetal on 05/07/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager : CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach (cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("Rs.\(cartManager.total)")
                        .bold()
                }
                .padding()
            }
            else {
                Text("No product in the cart")
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
