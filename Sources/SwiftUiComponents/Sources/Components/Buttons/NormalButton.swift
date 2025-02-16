import SwiftUI

public struct SimpleButtonView: View {
    let message: String
    let textPrint: String
    public init(message: String,textPrint: String){
        self.message = message
        self.textPrint = textPrint
    }
    
    public var body: some View {

        VStack {
            Button{
                print(textPrint)
            } label: {
                Text(message)
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
    SimpleButtonView(message: "dame Click", textPrint: "me presionaron!!!!")
}
