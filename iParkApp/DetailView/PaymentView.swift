//
//  PaymentView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI

struct PaymentView: View {
    @Binding var selectedHour: CGFloat
    let perHourFee: CGFloat
    var body: some View {
        HStack {
            Text("$\(String.init(format: "%.2f", selectedHour/2 * perHourFee))")
                .font(.system(size: 22, weight: .bold))
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("Pay")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.yellowColor)
                    .frame(width: 180, height: 60)
                    .background(Color.purpleColor)
                    .cornerRadius(20)
            })
        }
    }
}

