//
//  ContentView.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/11/20.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
        
                Text("Hello, world!")
                    .padding()
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
