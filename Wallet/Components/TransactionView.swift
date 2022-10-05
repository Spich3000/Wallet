//
//  TransactionView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 31.08.2022.
//

import SwiftUI

struct TransactionView: View {
    
    var expense: Expense
    //    var catVM: CategoriesViewModel
    @EnvironmentObject var viewModel: ExpenseViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            
            let categoryID = expense.categoryID
            IconView(icon: CategoriesViewModel.shared.expenseCategories[categoryID])
                .frame(width: 34, height: 34)
            
            VStack {
                Text(expense.remark)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(expense.date.formatted(date: .numeric, time: .omitted))
                    .font(.caption)
                    .opacity(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.leading)
            
            VStack(alignment: .trailing, spacing: 7) {
                // Displaying price
                let price = viewModel.convertNumberToPrice(value: expense.type == .expense ? -expense.amount : expense.amount)
                Text(price)
                    .font(.callout)
                    .opacity(0.7)
                    .foregroundColor(expense.type == .expense ? .red : .green)
            }
        }
        .padding(.horizontal)
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(expense: Expense(remark: "Grossery", amount: 100, date: Date(), type: .expense, categoryID: 0))
            .environmentObject(ExpenseViewModel())
    }
}
