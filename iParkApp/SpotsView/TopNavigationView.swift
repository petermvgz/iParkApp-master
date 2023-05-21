//
//  TopNavigationView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI

struct TopNavigationView: View {
    var body: some View {
        HStack {
            VStack(spacing: 8) {
                /*Image(systemName: "minus")
                
                Image(systemName: "minus")
                    .foregroundColor(.gray)*/
            }
           // .font(.system(size: 26))
           // .frame(width: 66, height: 66)
           // .background(Color.white)
          //  .cornerRadius(25)
            
            Spacer()
            
            HStack {
                Image("car")
                    
                VStack(alignment: .leading, spacing: 2) {
                    Text("My car")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Text("Honda")
                        .font(.system(size: 17))
                }
            }
            .frame(width: 145, height: 66)
            .background(Color.white)
            .cornerRadius(25)
        }
    }
}

