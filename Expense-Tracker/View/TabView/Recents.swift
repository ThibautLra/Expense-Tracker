//
//  Recents.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 25/05/2024.
//

import SwiftUI

struct Recents: View {
    var body: some View {
        GeometryReader{
            let size = $0.size
            NavigationStack{
                ScrollView(.vertical){
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]){
                        Section{
                            
                        } header: {
                            HeaderView(size)
                        }
                    }
                }
            }
        }
    }
}

@ViewBuilder
func HeaderView(_ size: CGSize) -> some View {
    VStack(alignment: .leading,spacing: 5, content: {
        Text("Welcome").font(.title.bold())
    }).frame(maxWidth: .infinity ,alignment: .leading).overlay(alignment: .trailing, content: {
        NavigationLink{
            AddExpenseView()
        } label: {
            Image(systemName: "plus").font(.title3).fontWeight(.semibold)
        }
    })
    .padding(.bottom,5)
    .background {
        Rectangle().fill(.ultraThinMaterial).padding(.horizontal,-15).padding(.top, -(safeArea.top + 15))
    }
}

#Preview {
    Recents()
}
