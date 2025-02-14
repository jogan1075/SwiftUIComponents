

import SwiftUI

@available(iOS 16.1, *)
struct ComponentsList: View {
    
    var body: some View {
        NavigationView {
            ViewsList()
            .navigationTitle("Menú")
        }
    }
    
}

#Preview {
    if #available(iOS 16.1, *) {
        ComponentsList()
    } else {
        // Fallback on earlier versions
    }
}
