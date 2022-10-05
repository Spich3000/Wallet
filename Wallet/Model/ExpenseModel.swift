//
//  ExpenseModel.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 31.08.2022.
//

import Foundation

struct Expense: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    
    var categoryID: Int
}

enum ExpenseType: String {
    case income = "Income"
    case expense = "Expenses"
    case all = "All"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Magic Keyboard", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, categoryID: 13),
    Expense(remark: "Food", amount: 19, date: Date(timeIntervalSince1970: 1652814445), type: .expense, categoryID: 0),
    Expense(remark: "Magic Trackpad", amount: 99, date: Date(timeIntervalSince1970: 1652382445), type: .expense, categoryID: 13),
    Expense(remark: "Uber Grab", amount: 20, date: Date(timeIntervalSince1970: 1652296045), type: .expense, categoryID: 4),
    Expense(remark: "Amazon Purchase", amount: 299, date: Date(timeIntervalSince1970: 1652209645), type: .expense, categoryID: 10),
    Expense(remark: "Stocks", amount: 399, date: Date(timeIntervalSince1970: 1652036845), type: .expense, categoryID: 20),
    Expense(remark: "In App Purchase", amount: 5.99, date: Date(timeIntervalSince1970: 1651864045), type: .expense, categoryID: 18),
    Expense(remark: "Movie Ticket", amount: 99, date: Date(timeIntervalSince1970: 1651691245), type: .expense, categoryID: 8),
    Expense(remark: "Apple Music", amount: 25, date: Date(timeIntervalSince1970: 1651518445), type: .expense, categoryID: 18),
    Expense(remark: "Snacks", amount: 49, date: Date(timeIntervalSince1970: 1651432045), type: .expense, categoryID: 0),
    
//    Expense(remark: "Salary", amount: 69, date: Date(timeIntervalSince1970: 1651432045), type: .income, categoryID: 21),
]
