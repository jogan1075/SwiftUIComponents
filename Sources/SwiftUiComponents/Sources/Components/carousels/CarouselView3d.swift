
//
//  CarouselView.swift
//  MovieDB-JMC
//
//  Created by Jonathan Muñoz on 04-02-25.
//

import SwiftUI

public struct CarouselView3d: View {
    
    var xDistance: Int = 150
    
    @State private var snappedItem  = 0.0
    @State private var draggingItem = 1.0
    @State private var activeIndex: Int = 0
    
    @Binding var views: [CarouselViewChild] 
    
    init(views: Binding<[CarouselViewChild]>) {
        self._views = views
    }
    
    public var body: some View {
        ZStack{
            ForEach(views) { view in
                view
                    .scaleEffect(1.0 - abs(distance(view.id)) * 0.2)
                    .opacity(1.0 - abs(distance(view.id)) * 0.3)
                    .offset(x: gtOffset(view.id), y: 0)
                    .zIndex(1.0 - abs(distance(view.id)) * 0.1)
                
            }
        }
        .gesture(
            DragGesture()
                .onChanged { value in
                    draggingItem =  snappedItem + value.translation.width / 100
                }
                .onEnded { values in
                    withAnimation{
                        draggingItem = snappedItem + values.predictedEndTranslation.width / 100
                        draggingItem =  round(draggingItem).remainder(dividingBy: Double(views.count))
                        snappedItem = draggingItem
                        self.activeIndex = views.count + Int(draggingItem)
                        if (self.activeIndex > views.count || Int(draggingItem) >= 0){
                            self.activeIndex = Int(draggingItem)
                        }
                    }
                }
        )
        
    }
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item).remainder(dividingBy: Double(views.count)))
    }
    
    func gtOffset(_ item: Int) -> Double {
        let angle =  Double.pi * 2 / Double(views.count) * distance(item)
        return sin(angle) * Double(xDistance)
        
    }
}

#Preview {
    //CarouselView3d()
}

/*
@MainActor
let placeHolderCarouseChildView: [CarouselViewChild] = [
    CarouselViewChild(id: 1, content: {
        ZStack{
            RoundedRectangle(cornerRadius: 18)
                .fill(.red)
            Text("1")
                .padding()
        }
        .frame(width: 200, height: 400)
    }),
    CarouselViewChild(id: 2, content: {
        ZStack{
            RoundedRectangle(cornerRadius: 18)
                .fill(.red)
            Text("2")
                .padding()
        }
        .frame(width: 200, height: 400)
    }),
    CarouselViewChild(id: 3, content: {
        ZStack{
            RoundedRectangle(cornerRadius: 18)
                .fill(.red)
            Text("3")
                .padding()
        }
        .frame(width: 200, height: 400)
    })
]
*/
