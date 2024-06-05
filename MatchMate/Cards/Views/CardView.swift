//
//  CardView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct CardView: View {
    
    let user: User
    
    var body: some View {
            ZStack(alignment: .bottom) {
                AsyncImage(url: URL(string: user.picture.large)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: cardWidth, height: cardHeight)
                        .clipped()
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: cardWidth, height: cardHeight)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                UserInfoView(user: user)
            }
            .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        }
}



private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.75
    }
}
