//
//  GameModel.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/17/21.
//

import SwiftUI

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
