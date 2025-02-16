//
//  AutoScrollerCarousel.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 05-02-25.
//

import SwiftUI

public struct AutoScrollerCarousel: View {
    
    let imageNames: [CarouselViewChild]
    
    init(imageNames: [CarouselViewChild]) {
        self.imageNames = imageNames
    }
    
    let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
    
    @State private var selectedImageIndex: Int = 0
    
    public var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea()
            
            TabView(selection: $selectedImageIndex) {
                ForEach(imageNames) { view in
                    //                       Print(view.id)
                    ZStack(alignment: .topLeading) {
                        view
                    }
                    
                    .shadow(radius: 20)
                    .onTapGesture {
                        print("is tappable now! \(view)")
                    }
                }
            }
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
            
            
            HStack {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Capsule()
                        .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 35, height: 8)
                        .onTapGesture {
                            selectedImageIndex = index
                        }
                }
                .offset(y: 130)
            }
        }
        .onReceive(timer) { _ in
            withAnimation(.default) {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
    }
    
}

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}


#Preview {
    var tempViews: [CarouselViewChild] = []
    for i in (1...7){
        //        print("is tappable now! \(i)")
        tempViews.append(
            CarouselViewChild(id: i, content: {
                
                ZStack{
                    
                    Image("image\(i)", bundle: .module)
                        .resizable()
                        .tag(i)
                        .frame(width: 350, height: 200)
                }
                .background(VisualEffectBlur())
                .shadow(radius: 20)
                .onTapGesture {
                    print("is tappable now! \(i)")
                }
            })
        )
    }
    
    return AutoScrollerCarousel(imageNames: tempViews)
}

