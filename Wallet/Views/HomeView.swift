//
//  ContentView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 03.08.2022.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: PROPERTIES
    @State var showingViewState: Int = 1
    
    // MARK: BODY
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            TabView(selection: $showingViewState) {
                AddExpenseView().tag(0)
                StatisticView().tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()
        }
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ExpenseViewModel())
    }
}


