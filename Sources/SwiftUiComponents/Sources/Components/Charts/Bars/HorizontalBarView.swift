import SwiftUI
import Charts

@available(iOS 16.1, *)
struct HorizontalBarView: View {
    
    var barTitle: String
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
            .foregroundStyle(by: .value("Categoría", item.category))
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
        HorizontalBarView(barTitle: "Diagrama title", data: dataSales)
    } else {
        // Fallback on earlier versions
    }
}
