//
//  ContentView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/17/21.
//

// Inspired by: Sean Allen's Tic Tac Toe tutorial on YouTube
// Source to original video and code: https://youtu.be/MCLiPW2ns2w

import SwiftUI

// MARK: TODO: add an app icon

struct GameView: View {
    var body: some View {
        GeometryReader { geometry in
            TicTacToeView(geometry: geometry)
        }
    }
}

// MARK:TODO: implement a GameModel class to move the Player enum and Move struct to another file

enum Player {
    case human, computer
}

struct Move {
    let player: Player
    let boardIndex : Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
