//
//  LoginResponse.swift
//  test
//
//  Created by areej sadaqa on 10/03/2025.
//

import Foundation
struct LoginResponse: Decodable {
     let id: Int?
     let username, email, firstName, lastName: String?
     let gender: String?
     let image: String?
     let accessToken, refreshToken: String
}
