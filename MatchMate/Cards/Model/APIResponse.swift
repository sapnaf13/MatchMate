//
//  User.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import Foundation

struct APIResponse: Codable {
    let results: [User]
}

struct User : Identifiable, Codable {
    let gender: String
    let name: Name
    let picture: Picture
    let login: Login
    let location: Location
    
    var id: String {
        return login.uuid
    }
}

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct Picture: Codable {
    let large: String
}

struct Login: Codable {
    let uuid: String
}

struct Location: Codable {
    let street: Street
    let city: String
    let state: String
    let country: String
}

struct Street: Codable {
    let number: Int
    let name: String
}

