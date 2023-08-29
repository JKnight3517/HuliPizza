//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular) != .compact {
                ZStack(alignment: .bottomTrailing) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                    
                }
                
            } else {
                HStack(alignment: .bottom) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundColor(Color("Surf"))
                        .fontWeight(.heavy)
                }
                    
            }
            Label {
                Text(orders.orderTotal, format: .currency(code: "USD"))
                
            }
        icon: {
            Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
        }
 
            
        }
        .background(.ultraThinMaterial)
        
        
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().environmentObject(OrderModel())
    }
}
