//
//  User.swift
//  FriendFace
//
//  Created by Justin Hold on 10/19/22.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
    
    static let example = User(
		id: UUID(),
		isActive: true,
		name: "Bilbo Baggins",
		age: 111,
		company: "Hobbit Adventures",
		email: "none@none.com",
		address: "The Shire",
		about: "Burglar",
		registered: Date.now,
		tags: ["Swift", "SwiftUI", "Dogs", "Coffee"],
		friends: []
	)
}
