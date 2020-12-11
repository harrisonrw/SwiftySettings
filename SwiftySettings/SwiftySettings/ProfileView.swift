//
//  ProfileView.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/11/20.
//

import SwiftUI

struct ProfileView: View {
    
    var user: User
    
    var body: some View {
        HStack(spacing: 15) {
            Image(user.profile ?? "profile-placeholder")
                .resizable()
                .frame(width: 64, height: 64)
                .cornerRadius(16)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullName)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.primary)
                    
                Text(user.membership)
                    .font(.system(size: 16))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Button(action: {
                print("Edit Profile Pressed")
            }) {
                Image(systemName: "pencil")
                    .font(Font.title.weight(.medium))
                    .padding(8)
                    .background(
                        Color(red: 239.0/255.0, green: 241.0/255.0, blue: 246.0/255.0)
                            .cornerRadius(8)
                    )
                    .foregroundColor(Color(red: 65.0/255.0, green: 61.0/255.0, blue: 245.0/255.0))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 84)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.mock())
    }
}
