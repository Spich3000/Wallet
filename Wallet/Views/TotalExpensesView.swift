//
//  TotalExpensesView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import SwiftUI

struct TotalExpensesView: View {
    var body: some View {
        Button {
            
        } label: {
            VStack(alignment: .leading) {
                HStack {
                    Text("Spent per year in this category")
                        .font(.caption)
                    Spacer()
                }
                .padding(.horizontal)
                HStack {
                    Text("1 343 424 ₽")
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.theme.labels).cornerRadius(12)
        .foregroundColor(Color.black)
        .padding()
        
    }
}

struct TotalExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        TotalExpensesView()
    }
}
