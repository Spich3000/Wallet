//
//  IncomeCategoriesView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import SwiftUI

struct IncomeCategoriesView: View {
    var body: some View {
            HStack {
                ForEach(CategoriesViewModel.shared.incomeCategories) { icon in
                    IconView(icon: icon)
                }
        }
        .padding(.horizontal)
    }
}

struct IncomeCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        IncomeCategoriesView()
    }
}
