import SwiftUI

struct CakeBarView: View {
    
    var color: Color
    @Binding var percentage: Double
    
    var body: some View {
        VStack {
                
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x:180, y:180))
                    path.addArc(
                        center: CGPoint(x: 180, y: 180),
                        radius: 150,
                        startAngle: .degrees(0),
                        endAngle: .degrees(percentage * 3.6),
                        clockwise: false
                    )
                }
                .fill(color)
            }
            .frame(width: 360, height: 360)
            .overlay(
                Text("\(percentage, specifier: "%.f")%")
                    .foregroundColor(.black)
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
            )
            
        }
        .frame(maxWidth: .infinity, maxHeight: 250)
        .padding()
    }
}

struct CakeBarContainer: View {
    @State var percentage: Double = 100

    var body: some View {
        CakeBarView(color: .cyan, percentage: $percentage)
    }
}

#Preview {
    CakeBarContainer()
}
