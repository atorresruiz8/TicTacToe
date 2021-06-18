//
//  Alerts.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/17/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title : Text
    var message : Text
    var buttonTitle : Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("You Win!"), message: Text("You won the game! Want to play again?"), buttonTitle: Text("Play Again."))
    static let compWin = AlertItem(title: Text("You Lost..."), message: Text("The AI beat you. Want to try again?"), buttonTitle: Text("Rematch."))
    static let draw = AlertItem(title: Text("Draw."), message: Text("Looks like no one won. Try again?"), buttonTitle: Text("Rematch."))
}
