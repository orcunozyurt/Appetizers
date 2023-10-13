//
//  DetailView.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 09.10.23.
//

import SwiftUI
import Kingfisher

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            
            KFImage(URL(string: appetizer.imageURL)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            
            HStack(spacing: 30) {
                NutritionInfoView(title: "Calories", value: appetizer.calories)
                NutritionInfoView(title: "Carbs", value: appetizer.carbs)
                NutritionInfoView(title: "Protein", value: appetizer.protein)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(PrimaryButtonStyle())
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay( Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing
        )
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
    }
}

struct NutritionInfoView: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
