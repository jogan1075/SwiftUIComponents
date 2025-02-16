import SwiftUI
import Charts

@available(iOS 16.1, *)
struct StaticColorHorizontalBarView: View {
    
    var barTitle: String
    var color: Color
    var data: [TransactionsData]

    var body: some View {
        Text(barTitle)
            .fontDesign(.rounded)
            .fontWeight(.bold)
        
        Chart(data) { item in
            BarMark(
                x: .value("Monto", item.amount),
                y: .value("Categoría", item.category)
            )
            .foregroundStyle(color)
            .cornerRadius(8)
            .annotation(position: .trailing) {
                Text("$\(NumberToString(Int(item.amount)))")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .padding(4)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(4)
            }
        }
        .chartXAxis {
            AxisMarks(position: .bottom)
        }
        .chartYAxis {
            AxisMarks(position: .leading)
        }
        .frame(height: 300)
        .padding()
    }
}

#Preview {
    if #available(iOS 16.1, *) {
        StaticColorHorizontalBarView(
            barTitle: "Diagrama title",
            color: .blue,
            data: dataSales
        )
    } else {
        // Fallback on earlier versions
    }
}
