import SwiftUI

@available(iOS 16.1, *)
struct CarouselItemDetail: View {
    let item: MenuItems
    
    var body: some View {
        switch item.id {
        case 1:
            CarouselAutoScrollScreen()
        case 2 :
            Carousel3dScreen()
    
        default:
            Text("No Item CandleStickChart available yet")
        }
    }
}
