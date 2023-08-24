//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...6, id: \.self) { index in
                Image(systemName: (index <= rating) ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating: 4)
    }
}
