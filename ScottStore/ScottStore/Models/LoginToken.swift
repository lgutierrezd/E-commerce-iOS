//
//  LoginToken.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import Foundation

struct LoginToken {
    var token: String?
    var refreshToken: String?
    var csrfToken: String?
    var user: User?
    var signedIn: Bool?
    var errors: [Error]?
}

struct User {
    var email: String?
}

struct ErrorGraphql {
    var fields: String?
    var message: String?
}
