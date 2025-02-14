import SwiftUI
import Charts

@available(iOS 16.1, *)
struct VerticalBarMarkView: View {
    
    var barTitle: String
    @Binding var data: [TransactionsData]

   
    var body: some View {
        VStack {
            Text(barTitle)
                .fontDesign(.rounded)
                .fontWeight(.bold)

            HStack {
                Chart(data) { item in
                    BarMark(
                        x: .value("Tipo", item.category),
                        y: .value("Cantidad", item.amount)
                    )
                    .cornerRadius(8)
                    .foregroundStyle(by: .value("Categoría", item.category))
                    .annotation(position: .top) {
                        Text("$\(NumberToString(Int(item.amount)))")
                            .font(.system(size: 8))
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(4)
                    }
                }
                .frame(height: 200)
            }
            .padding()
        }
        
    }

}

#Preview {
        
    if #available(iOS 16.1, *) {
        VerticalBarMarkView(barTitle: "Diagram Title", data: .constant(dataSales))
    } else {
        // Fallback on earlier versions
    }
}
