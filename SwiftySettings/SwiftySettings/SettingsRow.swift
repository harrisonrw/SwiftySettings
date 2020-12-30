//
//  SettingsRowV.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/30/20.
//

import SwiftUI

struct SettingsRow: View {
    var title: String
    var imageName: String
    
    var body: some View {
        
        HStack(spacing: 10) {
            Image(systemName: imageName)
                .frame(width: 24, height: 24)
                .font(.system(size: 20, weight: .semibold))
                .padding(10)
                .background(
                    Color(red: 239.0/255.0, green: 241.0/255.0, blue: 246.0/255.0)
                        .cornerRadius(8)
                )
                .foregroundColor(Color(red: 65.0/255.0, green: 61.0/255.0, blue: 245.0/255.0))
            
            Text(title)
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.primary)
            
            Spacer()
        }
            
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRow(title: "Row 1", imageName: "pencil")
    }
}
