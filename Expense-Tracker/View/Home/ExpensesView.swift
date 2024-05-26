//
//  ExpensesView.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 12/05/2024.
//

import SwiftUI
import SwiftData


enum ExpensesView: String {
    case recents = "Recents"
    case search = "Filter"
    case charts = "Analysis"
    case settings = "Settings"
    
    @ViewBuilder
    var tabContent: some View{
        switch self {
        case .recents:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}
