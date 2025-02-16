import SwiftUI

@available(iOS 16.1, *)
struct MenuItemDetail: View {
    let item: MenuItems
    var body: some View {
        switch item.id {
        case 1:
            Text("No Item available yet")
        case 2 :
            Text("No Item available yet")
        case 6 :
            CarouselScreen()
        case 10 :
            ContentChart()

        default:
            Text("No Item available yet")
        }
    }
}

@available(iOS 16.1, *)
struct ChartsMenuItemDetail: View {
    let item: MenuItems
    
    var body: some View {
        switch item.id {
        case 1:
            BarsView()
        case 2 :
            Text("No Item BubbleChart available yet")
        case 3 :
            Text("No Item CandleStickChart available yet")
        case 4 :
            Text("No Item Combined-Chart available yet")
        case 5 :
            Text("No Item LineChart available yet")
        case 6 :
            PieView()
        case 7 :
            Text("No Item RadarChart available yet")
        case 8 :
            Text("No Item ScatterChart available yet")
        default:
            BarsView()
        }
    }
}

#Preview {
    //MenuItemDetail(item: mainMenuItems[1])
    if #available(iOS 16.1, *) {
        ChartsMenuItemDetail(item: chartsMenuItems[1])
    } else {
        // Fallback on earlier versions
    }
}
