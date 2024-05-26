//
//  Expense_TrackerApp.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 11/05/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    @State private var activeTab: ExpensesView = .recents
    var body: some View {
        TabView(selection: $activeTab){
            Recents().tag(ExpensesView.recents).tabItem{
                ExpensesView.recents.tabContent
            }
            Search().tag(ExpensesView.search).tabItem{
                ExpensesView.search.tabContent
            }
            Graphs().tag(ExpensesView.charts).tabItem{
                ExpensesView.charts.tabContent
            }
            Settings().tag(ExpensesView.settings).tabItem{
                ExpensesView.settings.tabContent
            }
        }
            .sheet(isPresented: $isFirstTime, content: {
            LoginView().interactiveDismissDisabled()
        })
    }
}


@main
struct Expense_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
