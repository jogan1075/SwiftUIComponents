import SwiftUI

@available(iOS 16.1, *)
public struct MenuItemDetail: View {
    let item: MenuItems
    public var body: some View {
        switch item.id {
        case 1:
            Text("No Item available yet")
        case 2 :
            Text("No Item available yet")
        case 6 :
            Text("No Item available yet")
            //CarouselScreen()
        case 10 :
            //ContentChart()
            Text("No Item available yet")
        default:
            Text("No Item available yet")
        }
    }
}
