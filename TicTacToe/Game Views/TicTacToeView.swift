//
//  TicTacToeView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/18/21.
//

import SwiftUI

struct TicTacToeView: View {
    // create an instance of the view model
    @StateObject private var viewModel = GameViewModel()
    var geometry : GeometryProxy
    var body: some View {
        ZStack {
            // background image
            Image("paper")
                .ignoresSafeArea()
            VStack {
                
                Spacer()
                
                // Display difficulty
                Text(viewModel.difficulty + " Mode")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.black)
                Spacer()
                
                
                // Player and Computer Scores
                HStack {
                    Spacer()
                    VStack {
                        Text("Player's Score")
                            .font(.headline)
                            .padding(.bottom, 10)
                            .foregroundColor(.black)
                        Text(String(viewModel.playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Computer's Score")
                            .font(.headline)
                            .padding(.bottom, 10)
                            .foregroundColor(.black)
                        Text(String(viewModel.computerScore))
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                Spacer()
                
                // TicTacToe Grid
                LazyVGrid(columns: viewModel.columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            GameBoardView(proxy: geometry)
                            
                            PlayerIndicator(systemImageName: viewModel.moves[i]?.indicator ?? "")
                        }
                        .onTapGesture {
                            viewModel.processPlayerMove(for: i)
                        }
                    }
                }
                Spacer()
                
                // Difficulty options
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
                Spacer()
                Spacer()
            }
            .disabled(viewModel.isGameboardDisabled)
            .padding()
            .alert(item: $viewModel.alertItem, content: {alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame()}))
            })
        }
    }
}
