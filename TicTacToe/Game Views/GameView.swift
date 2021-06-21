//
//  TicTacToeView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/18/21.
//

// This view instantiates an instance of the view model, geometry of the screen, and the background which are then passed to DisplaySetup to continue drawing the game screen

import SwiftUI

struct GameView: View {
    // create an instance of the view model
    @ObservedObject private var viewModel = GameViewModel()
    var geometry : GeometryProxy
    var body: some View {
        ZStack {
            // background image
            Image("paper")
                .ignoresSafeArea()
            DisplaySetup(viewModel: viewModel, geometry: geometry)
        }
    }
}
