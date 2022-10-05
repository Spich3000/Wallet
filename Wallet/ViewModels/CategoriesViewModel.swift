//
//  CategoriesViewModel.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import Foundation
import SwiftUI

class CategoriesViewModel: ObservableObject {
    
    static let shared = CategoriesViewModel()
    
    var expenseCategories = [
        Categories(id: 0, name: "Food", image: "cup.and.saucer", color: Color.theme.food),
        Categories(id: 1, name: "House", image: "house", color: Color.theme.house),
        Categories(id: 2, name: "Books", image: "books.vertical", color: Color.theme.books),
        Categories(id: 3, name: "Clothes", image: "tshirt", color: Color.theme.clothes),
        Categories(id: 4, name: "Transport", image: "bus", color: Color.theme.transport),
        Categories(id: 5, name: "Education", image: "graduationcap", color: Color.theme.education),
        Categories(id: 6, name: "Car", image: "car", color: Color.theme.car),
        Categories(id: 7, name: "Taxes", image: "eyeglasses", color: Color.theme.taxes),
        Categories(id: 8, name: "Entertainment", image: "theatermasks", color: Color.theme.entertainment),
        Categories(id: 9, name: "Health", image: "pills", color: Color.theme.health),
        Categories(id: 10, name: "Hobby", image: "paintpalette", color: Color.theme.hobby),
        Categories(id: 11, name: "Animals", image: "pawprint", color: Color.theme.animals),
        Categories(id: 12, name: "Supermarket", image: "cart", color: Color.theme.supermarket),
        Categories(id: 13, name: "Appliances", image: "laptopcomputer.and.iphone", color: Color.theme.appliances),
        Categories(id: 14, name: "Presents", image: "gift", color: Color.theme.presents),
        Categories(id: 15, name: "Sport", image: "sport", color: Color.theme.sport),
        Categories(id: 16, name: "Beauty", image: "comb", color: Color.theme.beauty),
        Categories(id: 17, name: "Hacs", image: "hacs", color: Color.theme.hacs),
        Categories(id: 18, name: "Subscriptions", image: "apps.iphone", color: Color.theme.subscriptions),
        Categories(id: 19, name: "Family", image: "person.3", color: Color.theme.family),
        Categories(id: 20, name: "Other", image: "ellipsis", color: Color.theme.other),
    ]
    
    var incomeCategories = [
        Categories(id: 21, name: "Salary", image: "banknote", color: Color.theme.salary),
        Categories(id: 22, name: "Dividents", image: "command", color: Color.theme.dividends),
        Categories(id: 23, name: "Percents", image: "link", color: Color.theme.percents),
        Categories(id: 24, name: "Remittance", image: "arrow.left.arrow.right", color: Color.theme.moneyTransfer),
        Categories(id: 25, name: "Other", image: "ellipsis", color: Color.theme.other2),
    ]

    
}
