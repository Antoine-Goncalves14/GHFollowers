//
//  User.swift
//  GHFollowers
//
//  Created by Antoine Goncalves on 05/07/2024.
//

import UIKit

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var fllowers: Int
    var createdAt: String
}
