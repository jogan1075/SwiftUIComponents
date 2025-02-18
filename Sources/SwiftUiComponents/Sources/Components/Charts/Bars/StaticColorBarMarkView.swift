import SwiftUI
import Charts

@available(iOS 16.0, *)
public struct StaticColorBarMarkView: View {
    
    var barTitle: String
    var color: Color
    @Binding var data: [TransactionsData]
    
    init(barTitle: String, color: Color, data: Binding<[TransactionsData]>) {
        self.barTitle = barTitle
        self.color = color
        self._data = data
    }

    public var body: some View {
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
       // StaticColorBarMarkView(barTitle: "Ventas Dinamicas", color: .blue, data: dataSales)
    } else {
        // Fallback on earlier versions
    }
}
