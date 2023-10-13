//
//  Appetizer.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 04.10.23.
//

import Foundation

struct Appetizer: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 123,
                                           name: "Test Appetizer",
                                           description: "A test description for Test Appetizer",
                                           price: 9.99,
                                           imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Philips_PM5544.svg/200px-Philips_PM5544.svg.png",
                                           calories: 345,
                                           protein: 987,
                                           carbs: 1001)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "Test Appetizer 1",
                                           description: "A test description for Test Appetizer 1",
                                           price: 9.99,
                                           imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Philips_PM5544.svg/200px-Philips_PM5544.svg.png",
                                           calories: 345,
                                           protein: 987,
                                           carbs: 1001)
    
    static let orderItemTwo = Appetizer(id: 2,
                                           name: "Test Appetizer 2",
                                           description: "A test description for Test Appetizer 2",
                                           price: 9.99,
                                           imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Philips_PM5544.svg/200px-Philips_PM5544.svg.png",
                                           calories: 345,
                                           protein: 987,
                                           carbs: 1001)
    
    static let orderItemThree = Appetizer(id: 3,
                                           name: "Test Appetizer 3",
                                           description: "A test description for Test Appetizer 3",
                                           price: 9.99,
                                           imageURL: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Philips_PM5544.svg/200px-Philips_PM5544.svg.png",
                                           calories: 345,
                                           protein: 987,
                                           carbs: 1001)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
