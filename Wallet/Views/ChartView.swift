//
//  ChartView.swift
//  Wallet
//
//  Created by Дмитрий Спичаков on 29.08.2022.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .fill(Color.theme.background)
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .overlay {
                ZStack {
                    VStack {
                        VStack {
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                        }
                        VStack {
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                            Divider()
                            Spacer()
                        }
                        
                    }
                    VStack(alignment: .center) {
                        HStack {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .frame(width: 200, height: 10)
                                .rotationEffect(Angle(degrees: 90))
                                .offset(x: 90, y: 20)
                            //                                Spacer()
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .frame(width: 100, height: 10)
                                .rotationEffect(Angle(degrees: 90))
                                .offset(x: -35, y: 70)
                            //                                Spacer()
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .frame(width: 150, height: 10)
                                .rotationEffect(Angle(degrees: 90))
                                .offset(x: -190, y: 45)
                            //                                Spacer()
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .frame(width: 200, height: 10)
                                .rotationEffect(Angle(degrees: 90))
                                .offset(x: -362, y: 20)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                    .foregroundColor(Color.theme.appliances)
                    }
                }
            }
            .padding(.bottom, 20)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
