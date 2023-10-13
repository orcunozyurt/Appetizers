//
//  EmptyState.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 12.10.23.
//

import SwiftUI

struct EmptyState: View {
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "book")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text("Nothing added to order yet.")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState()
    }
}
