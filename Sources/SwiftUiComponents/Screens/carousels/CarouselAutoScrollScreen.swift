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
    
    func getChildViews() -> [CarouselViewChild] {
        var tempViews: [CarouselViewChild] = []
        
        for i in (1...7){
//
            tempViews.append(
              
                CarouselViewChild(id: i, content: {
                   
                    VStack{
                        
                        Image("image\(i)", bundle: .module)
                            .resizable()
                            .frame(width: 350, height: 200)
                        
                        Print("is image! \(i)")
                    }
                    .background(VisualEffectBlur())
                    .shadow(radius: 20)
                    .onTapGesture {
                        print("is tappable now! \(i)")
                    }
                })
            )
//            Print("is images! \(tempViews)")
        }
        
//        Print("is images! \(tempViews)")
        return tempViews
        
    }
    
   
}

//extension View {
//    func Print(_ vars: Any...) -> some View {
//        for v in vars { print(v) }
//        return EmptyView()
//    }
//}
#Preview {
    CarouselAutoScrollScreen()
}
