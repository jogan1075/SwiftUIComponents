import SwiftUI


@available(iOS 16.1, *)
struct ContentView: View {
    var body: some View {
        ComponentsList()
    }
}

#Preview {
    if #available(iOS 16.1, *) {
        ContentView()
    } else {
        // Fallback on earlier versions
    }
    
    //    Image(._7)
}
