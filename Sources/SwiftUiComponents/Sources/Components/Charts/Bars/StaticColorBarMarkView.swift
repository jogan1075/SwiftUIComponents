import SwiftUI
import Charts

@available(iOS 16.0, *)
struct StaticColorBarMarkView: View {
    
    var barTitle: String
    var color: Color
    @Binding var data: [TransactionsData]

    var body: some View {
        VStack {
            Text(barTitle)
                .font(.title)

            HStack {
                Chart(data) { item in
                    BarMark(
                        x: .value("Tipo", item.category),
                        y: .value("Cantidad", item.count)
                    )
                    .cornerRadius(8)
                    .foregroundStyle(color)
                    .annotation(position: .top) {
                        Text("$\(NumberToString(Int(item.amount)))")
                            .font(.system(size: 8))
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(4)
                    }
                }
                .frame(height: 180)
            }
            .padding(40)
        }
        
    }

}

#Preview {
        
    if #available(iOS 16.0, *) {
        StaticColorBarMarkView(barTitle: "Ventas Dinamicas", color: .blue, data: .constant(dataSales))
    } else {
        // Fallback on earlier versions
    }
}
