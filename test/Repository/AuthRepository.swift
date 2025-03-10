//
//  AuthRepository.swift
//  test
//
//  Created by areej sadaqa on 10/03/2025.
//

import Foundation

protocol AuthRepositoryProtocol {
    func login(loginRequest: LoginRequest, completion: @escaping (Result<String, Error>) -> Void)
}

class AuthRepository: AuthRepositoryProtocol {
    private let networkService: NetworkServiceProtocol

    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
    }

    func login(loginRequest: LoginRequest, completion: @escaping (Result<String, Error>) -> Void) {

        let endpoint = APIEndpoints.login(request: loginRequest)

        networkService.request(endpoint: endpoint) { (result: Result<LoginResponse, Error>) in
            switch result {
            case .success(let response):
                completion(.success(response.accessToken))
            case .failure(let error):
                completion(.failure(error)) 
            }
        }
    }
}
