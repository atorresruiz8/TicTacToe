//
//  DisplayDifficulty.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/21/21.
//

// This view displays the user's selected AI difficulty.

import SwiftUI

struct DisplayDifficulty: View {
    @ObservedObject var viewModel : GameViewModel
    var body: some View {
        Text(viewModel.difficulty + " Mode")
            .font(.largeTitle)
            .padding()
            .foregroundColor(.black)
    }
}
