//
//  ReceiptView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/16/23.
//

import SwiftUI

struct ReceiptView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 22))
                        .foregroundColor(.purple)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            Text("Receipt View")
                .font(.system(size: 24, weight: .bold))
            
            Spacer()
        }
    }
}
struct ReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptView()
    }
}
