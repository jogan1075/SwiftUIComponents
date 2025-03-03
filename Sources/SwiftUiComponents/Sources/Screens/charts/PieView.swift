import SwiftUI

struct PieView: View {
    
    @State var percentage: Double = 1
    
    var body: some View {
        ScrollView {
            VStack() {
                Text(" Component name = CakeBarView")
                    .font(.caption)
                Slider(value: $percentage, in: 0...100, step: 1)
                    .frame(width: 250)
                CakeBarView(color: .yellow, percentaje: $percentage)
            }
            .padding()
        }
    }
}

#Preview {
    
     var percent: Double = 100
    PieView(percentage: percent)
}
