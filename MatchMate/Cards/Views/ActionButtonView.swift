//
//  ActionButtonView.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct ActionButtonView: View {
    @Binding var viewState: ViewState
    
    var body: some View {
        ZStack {
            // Decline Button
            Button(action: {
                print("Decline button tapped")
                viewState = .declined
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .heavy))
                    .foregroundColor(.blue)
                    .frame(width: 48, height: 48)
                    .background(Circle().fill(Color.white).shadow(radius: 6))
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.leading, 40)
            
            // Accept Button
            Button(action: {
                print("Accept button tapped")
                viewState = .accepted
            }) {
                Image(systemName: "checkmark")
                    .font(.system(size: 24, weight: .heavy))
                    .foregroundColor(.blue)
                    .frame(width: 48, height: 48)
                    .background(Circle().fill(Color.white).shadow(radius: 6))
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.trailing, 40)
        }
        .padding(.horizontal, 20)
    }
}
        
