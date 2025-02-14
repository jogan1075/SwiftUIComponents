import SwiftUI

struct SimpleButtonView: View {
    var body: some View {

        VStack {
            Button{
                print("preciono")
            } label: {
                Text("Click here!")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(25)
            }
        }
        
    }
}

#Preview {
    SimpleButtonView()
}
