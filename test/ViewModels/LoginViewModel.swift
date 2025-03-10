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

    private let authRepository: AuthRepositoryProtocol

    init(authRepository: AuthRepositoryProtocol = AuthRepository()) {
        self.authRepository = authRepository
    }

    func login(username: String, password: String) {
        let request = LoginRequest(username: username, password: password)

        authRepository.login(loginRequest: request) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let token):
                    self.isAuthenticated = true
                    self.token = token
                case .failure:
                    self.isAuthenticated = false
                }
            }
        }
    }
}

class AuthenticatedActionHandler {
    func performActions() {
        // Perform any necessary actions when authenticated
    }
}
