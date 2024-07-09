//
//  GHError.swift
//  GHFollowers
//
//  Created by Antoine Goncalves on 05/07/2024.
//

import UIKit

enum GFError: String, Error {
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalideResponse   = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again"
    case unableToFavorite   = "There was an error favoritin this user. Please try again"
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
