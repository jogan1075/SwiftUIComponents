//
//  AutoScrollerCarousel.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 05-02-25.
//

import SwiftUI

struct AutoScrollerCarousel: View {
    var imageNames: [UIImage]
    //var imageNames: [ContentSource]
       let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
       
       @State private var selectedImageIndex: Int = 0

    var body: some View {
        ZStack {
               Color.secondary
                   .ignoresSafeArea()

               TabView(selection: $selectedImageIndex) {
                   ForEach(imageNames, id: \.self) { logo in
                   //ForEach(0..<imageNames.count, id: \.self) { index in
                       ZStack(alignment: .topLeading) {
                          // ._\(imageNames[index])"
                           Image (uiImage: logo)
                               .resizable()
                               .tag(logo)
                               .frame(width: 350, height: 200)
                       }
                    
                       .shadow(radius: 20)
                       .onTapGesture {
                           print("is tappable now! \(logo)")
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

#Preview {

    AutoScrollerCarousel(imageNames: [ UIImage(named: "image1")!
    ])
}
