import Foundation

func RandomNumber() -> Double {
    return Double.random(in: 0...10000000)
}

func NumberToString(_ number: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.groupingSeparator = "."
    return formatter.string(from: NSNumber(value: number)) ?? "\(number)"
}
