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
            
            VStack(alignment: .leading) {
        
                ProfileView(user: user)
                    .padding()
                
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
