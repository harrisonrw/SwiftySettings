//
//  User.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/11/20.
//

import Foundation

struct User {
    let firstName: String
    let lastName: String
    let membership: String
    let profile: String?
    let creditBalance: Int // in cents
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    var creditBalanceDollars: Int {
        return creditBalance / 100
    }
    
    var creditBalanceCents: Int {
        return creditBalance - (Int(creditBalance / 100) * 100)
    }
    
    // User generated with https://randomuser.me/
    static func mock() -> User {
        return User(
            firstName: "Ellen",
            lastName: "Reynolds",
            membership: "Premium Member",
            profile: "57",
            creditBalance: 354225
        )
    }
}
