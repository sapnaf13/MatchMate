//
//  UserInfoView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(user.name.first) \(user.name.last)")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(user.gender.capitalized)")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            Text("\(user.location.street.number) \(user.location.street.name) \(user.location.city) \(user.location.country)")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(Color.gray.opacity(0.5))
    }
}


