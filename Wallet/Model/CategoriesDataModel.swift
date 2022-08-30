//
//  CategoriesDataModel.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import Foundation
import SwiftUI

struct Categories: Identifiable {
    let id = UUID()
    let image: String
    let color: Color
}
