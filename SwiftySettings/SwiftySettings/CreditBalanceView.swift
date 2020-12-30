//
//  CreditBalanceView.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/11/20.
//

import SwiftUI

struct CreditBalanceView: View {
    
    var user: User
    
    var body: some View {
       
        HStack(spacing: 15) {
            Image(systemName: "folder.fill")
                .font(Font.title.weight(.medium))
                .padding(20)
                .background(
                    Color(red: 245.0/255.0, green: 131.0/255.0, blue: 91.0/255.0)
                        .cornerRadius(16)
                )
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                
                Group {
                    Text("$")
                        .font(.system(size: 24))
                        .foregroundColor(.secondary) +
                    Text("\(user.creditBalanceDollars)")
                        .font(.system(size: 24))
                        .foregroundColor(.primary) +
                    Text(".\(user.creditBalanceCents)")
                        .font(.system(size: 18))
                        .foregroundColor(.secondary)
                }
                
                Text("Credit Balance")
                    .font(.system(size: 18))
                    .foregroundColor(.secondary)
                
            }
        
            Spacer()
            
        }
        .padding()
        .background(
            Color(red: 255.0/255.0, green: 240.0/255.0, blue: 234.0/255.0)
                .cornerRadius(16)
        )
        
    }
}

struct CreditBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        CreditBalanceView(user: User.mock())
    }
}
