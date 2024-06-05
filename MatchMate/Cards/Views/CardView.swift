//
//  CardView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
            ZStack(alignment: .bottom) {
                Rectangle()
                UserInfoView()
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






#Preview {
    CardView()
}
