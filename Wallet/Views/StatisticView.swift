//
//  StatisticView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 01.10.2022.
//

import SwiftUI

struct StatisticView: View {
    
    // MARK: PROPERTIES
    @StateObject var viewModel = ExpenseViewModel()

    // MARK: BODY
    var body: some View {
        ScrollView {
            header1
            ChartView()
            VStack {
                ExpenseCategoriesView()
                ButtonsView()
                TotalExpensesView()
                TransactionsView()
            }
//            Spacer()
            .padding(.vertical)
            .background {
                backgroundRectangle
            }
            .ignoresSafeArea()
        }
    }
    
    // MARK: TRANSACTION VIEW
    @ViewBuilder
    func TransactionsView() -> some View {
        VStack(spacing: 0) {
            HStack {
                Text("All expenses for the year in this category")
                    .font(.caption)
                    .padding(.leading)
                Spacer()
            }
            .padding(10)
            
            ForEach(viewModel.expenses) { expense in
                // Transaction Card View
                TransactionView(expense: expense)
                    .environmentObject(viewModel)
                Divider()
            }
            .padding(10)
        }
        .frame(maxWidth: .infinity)
        .background(Color.theme.labels).cornerRadius(30)
        .foregroundColor(Color.black)
        .padding(.horizontal)
    }
}

// MARK: PREVIEW
struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}

// MARK: EXTENSIONS
extension StatisticView {
    
    private var header1: some View {
        Text("Expense comparison")
            .foregroundColor(Color.theme.accent)
    }
    
    private var backgroundRectangle: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(maxHeight: .infinity)
            .foregroundColor(.white)
    }
    
   
}
