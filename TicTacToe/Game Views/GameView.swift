//
//  ContentView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/17/21.
//

// Inspired by: Sean Allen's Tic Tac Toe tutorial on YouTube
// Source to original video and code: https://youtu.be/MCLiPW2ns2w

import SwiftUI

struct GameView: View {
    var body: some View {
        GeometryReader { geometry in
            TicTacToeView(geometry: geometry)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
