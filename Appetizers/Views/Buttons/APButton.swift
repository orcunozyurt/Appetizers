//
//  APButton.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 09.10.23.
//

import SwiftUI

struct APButton: View {
    let buttonText: LocalizedStringKey
    
    var body: some View {
        Text(buttonText)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.primaryColor)
            .cornerRadius(8)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(buttonText: "$4.99 - Add to Order")
    }
}
