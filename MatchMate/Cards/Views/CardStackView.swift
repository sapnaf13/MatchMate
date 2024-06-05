//
//  CardStackView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

enum ViewState {
    case actionButtons
    case accepted
    case declined
}

struct CardStackView: View {
    @State private var viewState: ViewState = .actionButtons
    let user: User
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                ForEach(0 ..< 10) { card in
                    CardView(user: user)
                }
            }
            switch viewState {
            case .actionButtons:
                ActionButtonView(viewState: $viewState)
            case .accepted:
                AcceptedView()
            case .declined:
                DeclinedView()
            }
       }
    }
}
