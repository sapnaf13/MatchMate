//
//  CardViewList.swift
//  MatchMate
//
//  Created by Harish Fulwani on 05/06/24.
//

import SwiftUI

struct CardViewList: View {
    var body: some View {
        List {
            ForEach( 0..<5 ) { eachCard in
                CardStackView()
            }
        }
    }
}

#Preview {
    CardViewList()
}
