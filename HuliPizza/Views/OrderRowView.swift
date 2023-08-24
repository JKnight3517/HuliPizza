//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Your Order Item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
