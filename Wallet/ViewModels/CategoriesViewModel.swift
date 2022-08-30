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
        Categories(image: "cup.and.saucer", color: Color.theme.food),
        Categories(image: "house", color: Color.theme.house),
        Categories(image: "books.vertical", color: Color.theme.books),
        Categories(image: "tshirt", color: Color.theme.clothes),
        Categories(image: "bus", color: Color.theme.transport),
        Categories(image: "graduationcap", color: Color.theme.education),
        Categories(image: "car", color: Color.theme.car),
        Categories(image: "eyeglasses", color: Color.theme.taxes),
        Categories(image: "theatermasks", color: Color.theme.entertainment),
        Categories(image: "pills", color: Color.theme.health),
        Categories(image: "paintpalette", color: Color.theme.hobby),
        Categories(image: "pawprint", color: Color.theme.animals),
        Categories(image: "cart", color: Color.theme.supermarket),
        Categories(image: "laptopcomputer.and.iphone", color: Color.theme.appliances),
        Categories(image: "gift", color: Color.theme.presents),
        Categories(image: "sport", color: Color.theme.sport),
        Categories(image: "comb", color: Color.theme.beauty),
        Categories(image: "hacs", color: Color.theme.hacs),
        Categories(image: "apps.iphone", color: Color.theme.subscriptions),
        Categories(image: "person.3", color: Color.theme.family),
        Categories(image: "ellipsis", color: Color.theme.other),
    ]
    
    var incomeCategories = [
        Categories(image: "banknote", color: Color.theme.salary),
        Categories(image: "command", color: Color.theme.dividends),
        Categories(image: "link", color: Color.theme.percents),
        Categories(image: "arrow.left.arrow.right", color: Color.theme.moneyTransfer),
        Categories(image: "ellipsis", color: Color.theme.other2),
    ]

    
}
