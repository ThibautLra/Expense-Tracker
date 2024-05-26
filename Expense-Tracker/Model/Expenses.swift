//
//  Expenses.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 12/05/2024.
//

import SwiftUI
import SwiftData

@Model
class Expenses {
    var title: String
    var subtitle: String
    var category: Category?
    var date: Date
    var amount: Double
    
    init(title: String, subtitle: String, category: Category? = nil, date: Date, amount: Double){
        self.title = title
        self.subtitle = subtitle
        self.category = category
        self.date = date
        self.amount = amount
    }
}
