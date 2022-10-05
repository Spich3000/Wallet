//
//  CategoriesView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import SwiftUI

struct ExpenseCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(CategoriesViewModel.shared.expenseCategories, id: \.id) { icon in
                    VStack(spacing: 5.0) {
                        IconView(icon: icon)
                        Text(icon.name)
                            .font(.caption2)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCategoriesView()
    }
}
