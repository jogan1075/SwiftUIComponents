import SwiftUI

@available(iOS 16.1, *)
struct ContentChart: View {
    
    var body: some View {
        
        List(chartsMenuItems, id: \.id) { item in
            NavigationLink(destination: ChartsMenuItemDetail(item: item)) {
                Text(item.title)
            }
        }    }
}

#Preview {
    if #available(iOS 16.1, *) {
        ContentChart()
    } else {
        // Fallback on earlier versions
    }
}
