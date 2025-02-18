//
//  CarouselScreen.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 06-02-25.
//

import SwiftUI

@available(iOS 16.1, *)
struct CarouselScreen: View {
    
    var body: some View {
        List(chartsMenuItems, id: \.id) { item in
            NavigationLink(destination: CarouselItemDetail(item: item)) {
                Text(item.title)
            }
        }    }
    
    
}
}

#Preview {
    CarouselScreen()
}

