//
//  CardViewList.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct CardViewList: View {
    
    @Binding var users: [User]
    
    var body: some View {
        List(users) { user in
            CardStackView(user: user)
        }
    }
}


