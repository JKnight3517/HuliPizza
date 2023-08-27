//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var quantity: Int = 1
    var body: some View {
        
        VStack {
            HStack {
                Text("Your Order Item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text("\(quantity) @")
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
