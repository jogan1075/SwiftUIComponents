import SwiftUI

@available(iOS 16.1, *)
struct ViewsList: View {
    var body: some View {
        List(mainMenuItems, id: \.id){ item in
            NavigationLink(destination: MenuItemDetail(item: item)){
                Text(item.title)
            }
            
        }
    }
}

struct ViewRow: View {
    var title: String
    var body: some View {
        HStack{
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    if #available(iOS 16.1, *) {
        ViewsList()
    } else {
        // Fallback on earlier versions
    }
}
