//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .padding(.leading)
                    .frame(width: 300)
                    .background(LinearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)],
                                               startPoint: .leading,
                                               endPoint: .trailing), in: Capsule())
                
                if let image = UIImage(named: "0_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(color: .teal, radius: 5, x: 8,y:8)
                    
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                }
            }
          
            VStack(alignment: .leading) {
              
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum erat in nisl bibendum, dictum volutpat ligula posuere. Praesent non mauris elit. Sed id congue nisi. Donec dapibus volutpat libero, in commodo nulla lobortis a. Nunc odio mauris, interdum sed lacus in, pharetra tempus purus. Nunc tellus odio, sollicitudin vel.")
                        .font(.body)
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
