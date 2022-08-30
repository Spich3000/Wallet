//
//  IconView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 30.08.2022.
//

import SwiftUI

struct IconView: View {
    
    let icon: Categories
    
    var body: some View {
        
        if icon.image == "sport" {
            Image(icon.image)
                .resizable()
                .frame(width: 20, height: 20)
                .scaledToFill()
                .frame(width: 59.48, height: 59.48)
                .background(icon.color)
                .cornerRadius(10)
        } else if icon.image == "hacs" {
            Image(systemName: "house")
                .overlay(
                    Image(systemName: "dollarsign.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 9, height: 9)
                        .background(icon.color)
                        .cornerRadius(35)
                        .offset(x: 7, y: 8))
                .frame(width: 59.48, height: 59.48)
                .background(icon.color)
                .cornerRadius(10)
        } else {
            Image(systemName: icon.image)
                .frame(width: 59.48, height: 59.48)
                .background(icon.color)
                .cornerRadius(10)
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(icon: Categories.init(image: "cup.and.saucer", color: Color.theme.food))
    }
}
