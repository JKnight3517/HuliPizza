//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                RatingsView(rating: 3)
            }
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: 2)
    }
}
