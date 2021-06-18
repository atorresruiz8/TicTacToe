//
//  GameBoardView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/18/21.
//

import SwiftUI
struct GameBoardView: View {
    var proxy : GeometryProxy
    var body: some View {
        Rectangle()
            .foregroundColor(.clear).opacity(0.5)
            .frame(width: proxy.size.width/3 - 15, height: proxy.size.width/3 - 15)
            .cornerRadius(15.0)
            .border(Color.black, width: 1)
    }
}
