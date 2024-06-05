//
//  UserInfoView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Sapna Fulwani")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("Female")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            
            Text("Sahasra Grand Apartments, Bangalore, Karnataka, India  Pin 3188888")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(Color.gray.opacity(0.5))
    }
}

#Preview {
    UserInfoView()
}
