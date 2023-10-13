//
//  User.swift
//  Appetizers
//
//  Created by Orcun Ozyurt on 04.10.23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var birthdate = Date()
    var email = ""
    var extraNapkins = false
    var frequentRefills = false
}
