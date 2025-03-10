//
//  APIClient.swift
//  test
//
//  Created by MacBookPro on 10/03/2025.
//

import Foundation
import Alamofire

protocol NetworkServiceProtocol {
    func request<T: Decodable>(
        endpoint: Endpoint,
        completion: @escaping (Result<T, Error>) -> Void
    )
}

class NetworkService: NetworkServiceProtocol {
    func request<T: Decodable>(
        endpoint: Endpoint,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        let url = endpoint.baseURL + endpoint.path 
        
        AF.request(url, method: endpoint.method, parameters: endpoint.body, encoding: JSONEncoding.default)
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}

