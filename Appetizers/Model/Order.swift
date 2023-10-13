//
//  Order.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 04.10.23.
//

import Foundation

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func remove(atIndex index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    var totalPrice: String {
        var totalPriceDouble = items.lazy.compactMap { $0.price }
            .reduce(0, +).formatted(.number.precision(.fractionLength(2)))
        
        var totalPriceString = "$\(totalPriceDouble)"
        return totalPriceString
    }
}
