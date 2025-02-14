//
//  CarouselScreen.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 06-02-25.
//

import SwiftUI

struct CarouselAutoScrollScreen: View {
    var body: some View {
        ZStack{
        AutoScrollerCarousel(imageNames: getChildViews())
        }
        .ignoresSafeArea()
        .frame( maxWidth: .infinity,  maxHeight: .infinity)
    }
    
    func getChildViews() -> [UIImage] {
        var tempViews: [UIImage] = []
       // UIImage(named: "image1")
        for i in (1...7){
            tempViews.append(UIImage(named: "image\(i)")!)
        }
        return tempViews
        
    }
}

#Preview {
    CarouselAutoScrollScreen()
}
