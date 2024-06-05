//
//  UserViewModel.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    private let apiService = ApiService()
    private var cancellables = Set<AnyCancellable>()
    
    func fetchUsers() {
        self.isLoading = true
        self.errorMessage = nil
        
        apiService.fetchUsers { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let users):
                    self?.users = users
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
