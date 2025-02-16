//
//  Carousel3dScreen.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 07-02-25.
//

import SwiftUI

struct Carousel3dScreen: View {
    var body: some View {
        ZStack{
            CarouselView3d(views: getChildViews())
        }
        .ignoresSafeArea()
        .frame( maxWidth: .infinity,  maxHeight: .infinity)
        .background(Color.gray)
    }
    
    func getChildViews() -> [CarouselViewChild] {
        var tempViews: [CarouselViewChild] = []
        
        for i in (1...7){
            tempViews.append(
                CarouselViewChild(id: i, content: {
                    ZStack{
                        Image("\(i)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .mask{
                                RoundedRectangle(cornerRadius: 18)
                                    .frame(width: 250,height: 400)
                            }
                    }
                    .frame(width: 250, height: 400)
                    .shadow(radius: 10)
                })
            )
        }
        return tempViews
        
    }
}

#Preview {
    Carousel3dScreen()
}
