//
//  DifficultiesView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/21/21.
//

// This view instantiates three buttons that let the user decide which difficulty of AI they want to play against.

import SwiftUI

struct DifficultyChoices: View {
    @ObservedObject var viewModel : GameViewModel
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                viewModel.alertItem = AlertContext.easyMode
                viewModel.difficulty = "Easy"
                viewModel.playerScore = 0
                viewModel.computerScore = 0
            }, label: {
                Text("Easy")
                    .foregroundColor(.black)
            })
            .padding()
            .border(Color.black, width: 1)
            
            Spacer()
            
            Button(action: {
                viewModel.alertItem = AlertContext.normalMode
                viewModel.difficulty = "Normal"
                viewModel.playerScore = 0
                viewModel.computerScore = 0
            }, label: {
                Text("Normal")
                    .foregroundColor(.black)
            })
            .padding()
            .border(Color.black, width: 1)
            
            Spacer()
            
            Button(action: {
                viewModel.alertItem = AlertContext.hardMode
                viewModel.difficulty = "Hard"
                viewModel.playerScore = 0
                viewModel.computerScore = 0
            }, label: {
                Text("Hard")
                    .foregroundColor(.black)
            })
            .padding()
            .border(Color.black, width: 1)
            Spacer()
        }
    }
}

