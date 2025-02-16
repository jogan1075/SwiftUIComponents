
struct TransactionsData: Identifiable {
    let id : Int
    let category: String
    var count: Double
    var amount: Double
}

//Provitional data
let dataSales: [TransactionsData] = [
    TransactionsData(id: 1, category: "Debito", count: RandomNumber(), amount: RandomNumber() * 1.25),
    TransactionsData(id: 2, category: "Credito", count: RandomNumber(), amount: RandomNumber() * 1.25),
    TransactionsData(id: 3, category: "Efectivo", count: RandomNumber(), amount: RandomNumber() * 1.25),
    TransactionsData(id: 4, category: "Hites", count: RandomNumber(), amount: RandomNumber() * 1.25),
    TransactionsData(id: 5, category: "Sodexo", count: RandomNumber(), amount: RandomNumber() * 1.25),
    TransactionsData(id: 6, category: "Pac", count: RandomNumber(), amount: RandomNumber() * 1.25),
]

