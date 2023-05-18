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
    @State private var showingConfirmationAlert = false
    
    var body: some View {
        HStack {
            Text("$\(String.init(format: "%.2f", selectedHour/2 * perHourFee))")
                .font(.system(size: 22, weight: .bold))
            Spacer()
            Button(action: {
                showingConfirmationAlert = true
            }, label: {
                Text("Pay")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.yellow)
                    .frame(width: 180, height: 60)
                    .background(Color.purple)
                    .cornerRadius(20)
            })
        }
        .alert(isPresented: $showingConfirmationAlert) {
            Alert(
                title: Text("Confirmation"),
                message: Text("Confirm parking space?"),
                primaryButton: .default(Text("Confirm"), action: {
                    // Perform actions when the user confirms
                }),
                secondaryButton: .cancel(Text("Cancel"))
            )
        }
    }
}

