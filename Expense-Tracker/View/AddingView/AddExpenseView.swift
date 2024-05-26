//
//  AddExpenseView.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 26/05/2024.
//

import SwiftUI
import SwiftData

struct AddExpenseView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    @State private var title: String = ""
    @State private var subTitle: String = ""
    @State private var date: Date = .init()
    @State private var amount: CGFloat = 0.0
    @State private var category: Category?
    
    @Query(animation: .snappy) private var allCategories: [Category]
    var body: some View {
        NavigationStack {
            List {
                Section("Title"){
                    TextField("Abonnement",text:$title)
                }
                Section("Description"){
                    TextField("Abonnement mensuel...",text: $subTitle)
                }
                Section("Amount Spent"){
                    HStack(spacing: 4) {
                        Text("EUR").fontWeight(.semibold)
                        TextField("0.0",value: $amount,formatter: formatter).keyboardType(.numberPad)
                    }
                }
                Section("Date"){
                    DatePicker("", selection: $date, displayedComponents: [.date]).datePickerStyle(.graphical).labelsHidden()
                }
                if !allCategories.isEmpty {
                    HStack{
                        Text("Category")
                        Spacer()
                        Picker("",selection:$category){
                            ForEach(allCategories){
                                Text($0.catname).tag($0)
                            }
                        }
                        .pickerStyle(.menu)
                        .labelsHidden()
                    }
                }
            } .navigationTitle("Add Expense")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading){
                        Button("Cancel"){
                            dismiss()
                        }.tint(.red)
                    }
                    ToolbarItem(placement: .topBarTrailing ){
                        Button("Add",action: addExpense).disabled(isAddButtonDisabled)
                    }
                }
        }
    }
    var isAddButtonDisabled: Bool {
        return title.isEmpty || subTitle.isEmpty || amount == .zero
    }
    
    func addExpense(){
        let expense = Expenses(title: title, subtitle: subTitle, category: category, date: date,amount: amount)
        context.insert(expense)
        dismiss()
    }
    var formatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        return formatter
    }
}

#Preview {
    AddExpenseView()
}
