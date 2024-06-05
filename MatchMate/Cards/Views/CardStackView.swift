//
//  CardStackView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct CardStackView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                ForEach(0 ..< 10) { card in
                    CardView(user: user)
                }
            }
            ActionButtonView()
        }
    }
}
