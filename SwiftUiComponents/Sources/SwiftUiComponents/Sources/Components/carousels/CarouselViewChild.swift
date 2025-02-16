//
//  CarouselViewChild.swift
//  MovieDB-JMC
//
//  Created by Jonathan Muñoz on 04-02-25.
//

import SwiftUI

struct CarouselViewChild: View, Identifiable {
    
    var id: Int
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack{
            AnyView(content)
        }
    }
}

