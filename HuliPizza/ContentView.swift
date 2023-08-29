//
//  ContentView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders:  OrderModel = OrderModel()
    @State private var showOrders: Bool = true
    @State private var selectedItem: MenuItem = noMenuItem
    
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            HStack {
                Text("\(orders.orderItems.count) orders")
                Spacer()
                Button{
                    showOrders.toggle()
                } label: {
                    Image(systemName:showOrders ? "cart" : "menucard")
                }
            }
            .foregroundStyle(.white)
            .font(.title2)
            
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            Spacer()
         
            
        }
        .padding()
        .background(.linearGradient(colors: [Color("Surf"),Color("Sky"),Color.white],
                                    startPoint: .topLeading,
                                    endPoint: .bottom))
        .environmentObject(orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
    }
}



