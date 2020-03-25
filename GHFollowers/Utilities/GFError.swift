//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by jonathan ferrer on 3/21/20.
//  Copyright © 2020 jonathan ferrer. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "The data revieved from the server was invalid. Please try again"
    case unableToFavorite = "There was an error favorting this user. Please try again"
}
