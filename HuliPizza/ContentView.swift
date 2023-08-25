//
//  ContentView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,4,5,6]
    var showOrders: Bool = false
    
    
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            if showOrders {
                OrderView(orders: orders)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
         
            
        }
        .padding()
        .background(.linearGradient(colors: [Color("Surf"),Color("Sky"),Color.white], startPoint: .topLeading, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



