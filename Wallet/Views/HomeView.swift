//
//  ContentView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 03.08.2022.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: BODY
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            ScrollView {
                header
                ChartView()
                VStack {
                    ButtonsView()
                    ButtonsSelectedView()
                    ExpenseCategoriesView()
                    TotalExpensesView()
                }
                .background {
                    backgroundRectangle
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

// MARK: EXTENSIONS
extension HomeView {
    
    private var header: some View {
        Text("Expense comparison")
            .foregroundColor(Color.theme.accent)
    }
    
    private var backgroundRectangle: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(maxHeight: .infinity)
            .foregroundColor(.white)
    }
    
}
