import SwiftUI

@available(iOS 16.1, *)
struct BarsView: View {
    var body: some View {
        ScrollView  {
            VStack {
                Divider()
                Text(" Component name = StaticColorBarMarkView()")
                    .font(.caption)
                StaticColorBarMarkView(barTitle: "Title of Bar", color: .blue, data: .constant(dataSales))
                Divider()
                Text(" Component name = VerticalBarMarkView()")
                    .font(.caption)
                VerticalBarMarkView(barTitle: "Title graphic", data: .constant(dataSales))
                Divider()
                Text(" Component name = StaticColorHorizontalBarView()")
                    .font(.caption)
                StaticColorHorizontalBarView(
                    barTitle: "Diagrama title",
                    color: .blue,
                    data: dataSales
                )
                Divider()
                Text(" Component name = HorizontalBarView()")
                    .font(.caption)
                HorizontalBarView(
                    barTitle: "Diagrama title",
                    data: dataSales
                )
            }
            .padding(2)
        }
    }
}

#Preview {
    if #available(iOS 16.1, *) {
        BarsView()
    } else {
        // Fallback on earlier versions
    }
}
