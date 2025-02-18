

import SwiftUI

//@available(iOS 16.1, *)
struct ComponentsList: View {
    
    var body: some View {
        VStack {
            NavigationView {
                ViewsList()
                    .navigationTitle("Menu")
                    .listStyle(.insetGrouped)
                    .background(Color.gray.opacity(0.3))
                    .scrollContentBackground(.hidden)
                    .navigationBarTitleDisplayMode(.automatic)
            }
            Spacer()
            HStack {
                Spacer()
                //Text("Versión:\(PackageVersion.version)").padding()
            }
                
                
        }
    }
    
}

#Preview {
    //if #available(iOS 16.1, *) {
        ComponentsList()
   //}
}
