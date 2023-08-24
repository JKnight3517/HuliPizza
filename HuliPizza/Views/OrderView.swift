//
//  OrderView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct OrderView: View {
    
    var orders: [Int]
    
    var body: some View {
        VStack {
            Label {
                Text(59.99, format: .currency(code: "USD"))
                
            }
        icon: {
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
        }
            
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ForEach(orders, id:\.self) { order in
               OrderRowView(order: order)
            }
        }
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1,2,3,4,5,6])
    }
}
