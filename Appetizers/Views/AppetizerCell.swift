//
//  AppetizerCell.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 04.10.23.
//

import SwiftUI
import Kingfisher

struct AppetizerCell: View {
    let appetizer: Appetizer

    var body: some View {
        HStack {
            KFImage(URL(string: appetizer.imageURL)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }
            .padding(.leading)
        }
        .onAppear() {
            
        }
    }
}

struct AppetizerCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerCell(appetizer: MockData.sampleAppetizer)
    }
}
