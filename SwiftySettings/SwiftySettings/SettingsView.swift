//
//  ContentView.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/11/20.
//

import SwiftUI

struct SettingsView: View {
    
    @State var user = User.mock()
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 15) {
        
                ProfileView(user: user)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    
                
                CreditBalanceView(user: user)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    
                
                NavigationLink(destination: DetailView(title: "Recent Transactions")) {
                    SettingsRow(title: "Recent Transactions", imageName: "dollarsign.circle.fill")
                        .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                }
                
                NavigationLink(destination: DetailView(title: "Credit Cards")) {
                    SettingsRow(title: "Credit Cards", imageName: "creditcard.fill")
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                }
                
                NavigationLink(destination: DetailView(title: "Privacy Policy")) {
                    SettingsRow(title: "Privacy Policy", imageName: "lock.fill")
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                }
                
                
                Button(action: {
                    print("Sign Out")
                }) {
                    SettingsRow(title: "Sign Out", imageName: "square.and.arrow.up.fill")
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                }
                
                Spacer()
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
