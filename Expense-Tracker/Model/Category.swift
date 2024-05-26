//
//  Category.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 12/05/2024.
//

import SwiftUI
import SwiftData

@Model
class Category {
    var catname: String
    @Relationship(deleteRule: .cascade, inverse: \Expenses.category)
    var expenses: [Expenses]?
    
    init(catname: String) {
        self.catname = catname
    }
    
}
