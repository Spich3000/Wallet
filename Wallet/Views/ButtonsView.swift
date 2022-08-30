//
//  ButtonsView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Year")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.theme.accent).cornerRadius(12)
            .foregroundColor(Color.white)
            
            Button {
                
            } label: {
                Text("Quarter")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.theme.labels).cornerRadius(12)
            .foregroundColor(Color.black)
            
            Button {
                
            } label: {
                Text("Month")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.theme.labels).cornerRadius(12).opacity(0.6)
            .foregroundColor(Color.black)
            
            Button {
                
            } label: {
                Text("Period")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.theme.labels).cornerRadius(12).opacity(0.6)
            .foregroundColor(Color.black)
            
        }
        .padding(.horizontal)
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
