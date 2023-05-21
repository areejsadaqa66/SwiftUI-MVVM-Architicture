//
//  LoginViewModel.swift
//  test
//
//  Created by areej sadaqa on 18/05/2023.
//

import SwiftUI
import Alamofire

class LoginViewModel: ObservableObject {
    @Published var isAuthenticated: Bool?
    @Published var token: String?

    func login(username: String, password: String) {
        let baseUrl = "https://2174b8a4-864e-4718-84e1-14817bcffb1f.mock.pstmn.io"
        let endpoint = "/api/v1/auth/login"
        let parameters = [
            "username": username,
            "password": password
        ]
        
        AF.request(baseUrl + endpoint, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .validate()
            .responseDecodable(of: LoginResponse.self) { response in
                switch response.result {
                case .success(let loginResponse):
                    self.isAuthenticated = true
                    self.token = loginResponse.token
                case .failure(let error):
                    self.isAuthenticated = false
                    print("Login request failed: \(error)")
                }
            }
    }
}

struct LoginResponse: Decodable {
    let token: String
}


class AuthenticatedActionHandler {
    func performActions() {
        // Perform any necessary actions when authenticated
    }
}
