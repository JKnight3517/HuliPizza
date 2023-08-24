//
//  ContentView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            HeaderView()
            OrderView()
            MenuItemView()
            MenuView()
            Spacer()
         
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



