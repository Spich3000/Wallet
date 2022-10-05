//
//  AddExpenseView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 01.10.2022.
//

import SwiftUI

struct AddExpenseView: View {
    
    // MARK: PROPERTIES
    @EnvironmentObject var viewModel: ExpenseViewModel
    @State var selectedExpense = false
    
    // MARK: BODY
    var body: some View {
        VStack {
            header0
            
            Spacer()
            
            if let symbol = viewModel.convertNumberToPrice(value: 0).first {
                TextField("0", text: $viewModel.amount)
                    .font(.system(size: 35))
                    .foregroundColor(Color("Gradient2"))
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                    .background {
                        Text(viewModel.amount == "" ? "0" : viewModel.amount)
                            .font(.system(size: 35))
                            .opacity(0)
                            .overlay(alignment: .leading) {
                                Text(String(symbol))
                                    .opacity(0.5)
                                    .offset(x: -15, y: 5)
                            }
                    }
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background {
                        Capsule()
                            .fill(.white)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top)
            }
            
            CustomCheckBoxes()
                .padding(.horizontal)
            
            if viewModel.type.rawValue == "Income" {
                IncomeCategoriesView()
            } else {
                ExpenseCategoriesView()
            }
            
            Spacer()
        }
    }
    
    // MARK: EXPENSETYPE
    @ViewBuilder
    func CustomCheckBoxes() -> some View {
        HStack(spacing: 10) {
            ForEach([ExpenseType.income, ExpenseType.expense], id: \.self) { type in
                ZStack {
                    Text(type.rawValue)
                        .foregroundColor(viewModel.type == type ? .white : .black)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .opacity(0.7)
                        .padding()
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(viewModel.type == type ? .black : Color.theme.labels)
                        .cornerRadius(30)

                }
                .onTapGesture {
                        viewModel.type = type
                }
                .onAppear {
                    viewModel.type = ExpenseType.expense
                }
            }
        }
    }
}

// MARK: PROPERTIES
struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpenseView()
            .environmentObject(ExpenseViewModel())
    }
}

// MARK: EXTENSIONS
extension AddExpenseView {
    
    private var header0: some View {
        Text("Insert expense")
            .foregroundColor(Color.theme.accent)
    }
    
}
