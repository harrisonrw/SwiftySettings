//
//  DetailView.swift
//  SwiftySettings
//
//  Created by Robert Harrison on 12/30/20.
//

import SwiftUI

struct DetailView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Hello World!")
    }
}
