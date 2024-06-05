//
//  ContentView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        CardViewList(users: $viewModel.users)
            .onAppear {
                viewModel.fetchUsers()
            }
    }
}

#Preview {
    ContentView()
}
