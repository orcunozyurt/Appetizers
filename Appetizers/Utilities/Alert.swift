//
//  Alert.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 05.10.23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: Network Alerts
    static let invalidData = AlertItem(
        title: Text("Invalid Data"),
        message: Text("Something is wrong with the data. Could not be parsed."),
        dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(
        title: Text("Invalid Response"),
        message: Text("Returned response is not valid."),
        dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(
        title: Text("Invalid URL"),
        message: Text("URL seems to be borken."),
        dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(
        title: Text("Unable to Complete"),
        message: Text("Request could not be completed."),
        dismissButton: .default(Text("OK")))
    
    //MARK: Account Alerts
    
    static let emptyFields = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all fields in the form are filled out."),
        dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure email is valid."),
        dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(
        title: Text("User Saved!"),
        message: Text("User is successfully saved."),
        dismissButton: .default(Text("OK")))
    
    static let invalidUser = AlertItem(
        title: Text("User data is invalid"),
        message: Text("Something went wrong while accessing user."),
        dismissButton: .default(Text("OK")))
}
