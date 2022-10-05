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
                    VStack(spacing: 5.0) {
                        IconView(icon: icon)
                        Text(icon.name)
                            .font(.caption2)
                    }
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
