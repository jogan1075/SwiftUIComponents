import SwiftUI

struct MenuItems : Hashable{
    var id: Int
    let title: String
}

// Menú principal
let mainMenuItems: [MenuItems] = [
    "App TextField",
    "App Buttons",
    "App Cards",
    "App Check Box",
    "App Radio Button",
    "App Carousels",
    "App Dialogs",
    "App Toggles",
    "App DropDown",
    "App Charts"
].enumerated().map { index, title in
    MenuItems(id: index + 1, title: title)
}

// Menú de gráficos (Charts)
let chartsMenuItems: [MenuItems] = [
    "BarChart",
    "BubbleChart",
    "CandleStickChart",
    "Combined-Chart",
    "LineChart",
    "PieChart",
    "RadarChart",
    "ScatterChart"
].enumerated().map { index, title in
    MenuItems(id: index + 1, title: title)
}
