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
            Button {
                addedItem = true
            } label: {
                Spacer()
                Text(12.99, format: .currency(code: "USD"))
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .padding()
            .background(.red, in: Capsule())
            .foregroundColor(.white)
            .padding(5)

         

        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem))
    }
}
