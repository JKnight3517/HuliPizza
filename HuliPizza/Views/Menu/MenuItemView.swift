//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct MenuItemView: View {
    
    @State private var addedItem: Bool = false
    @Binding var item: MenuItem
    @State var presentAlert: Bool = false
    @ObservedObject var orders: OrderModel
    @State private var newOrder: Bool = true
    @State private var order = noOrderItem
    
    
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top,.bottom], 3)
                        .cornerRadius(15)
                   
                    
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(Angle(degrees: 180))
                }
            }
            .background(LinearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)],
                                       startPoint: .leading,
                                       endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 8,y:8)
          
            VStack(alignment: .leading) {
              
                ScrollView {
                    Text(item.description)
                        .font(.body)
                }.frame(maxHeight: 200)
        
            }
            Spacer()
            Button {
                order = OrderItem(id: -999, item: item)
                presentAlert = true
            } label: {
                Spacer()
                Text(item.price, format: .currency(code: "USD")).bold()
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .disabled(item.id < 0)
            .padding()
            .background(.red, in: Capsule())
            .foregroundColor(.white)
            .padding(5)
            .sheet(isPresented: $presentAlert) {
                addedItem = true
            } content: {
                OrderDetailView(orderItem: $order,
                                presentSheet: $presentAlert,
                                newOrder: $newOrder)
            }

         

        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem),
                     orders: OrderModel())
    }
}
