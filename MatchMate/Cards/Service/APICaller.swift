//
//  APICaller.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import Foundation
import Combine

class ApiService {
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        guard let url = URL(string: "https://randomuser.me/api/?results=10") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                let error = NSError(domain: "dataNilError", code: -100001, userInfo: nil)
                completion(.failure(error))
                return
            }
            
            do {
                let userResponse = try JSONDecoder().decode(APIResponse.self, from: data)
                print(userResponse)
                completion(.success(userResponse.results))
            } catch let jsonError {
                completion(.failure(jsonError))
                print(jsonError)
            }
        }.resume()
    }
}
