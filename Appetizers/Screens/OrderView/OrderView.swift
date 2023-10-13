//
//  OrderView.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 04.10.23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject private var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerCell(appetizer: appetizer)
                        }
                        .onDelete { indexSet in
                            order.remove(atIndex: indexSet)
                        }
                    }
                    .listStyle(GroupedListStyle())
                    
                    
                    Button {
                        
                    } label: {
                        Text("\(order.totalPrice) - Place Order")
                    }
                    .modifier(PrimaryButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.isEmpty {
                    EmptyState()
                }
            }
            .navigationTitle("Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
