//
//  APIEndpoints.swift
//  test
//
//  Created by areej sadaqa on 10/03/2025.
//

import Foundation
import Alamofire

enum APIEndpoints {
    case login(request: LoginRequest)
}

// MARK: - Endpoint Conformance

extension APIEndpoints: Endpoint {
    
    var path: String {
        switch self {
        case .login:
            return "/auth/login"
        }
    }

    var method: HTTPMethod {
        switch self {
        case .login:
            return .post
        }
    }

    var body: Parameters? {
          switch self {
          case .login(let request):
              return ["username": request.username, "password": request.password]
          }
    }
}
