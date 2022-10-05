//
//  ButtonsSelectedView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import SwiftUI

struct ButtonsSelectedView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("2022")
        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .background(Color.theme.accent).cornerRadius(30)
        .foregroundColor(Color.white)
        .padding(.horizontal)
    }
}

struct ButtonsSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsSelectedView()
    }
}
