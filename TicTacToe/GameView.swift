//
//  ContentView.swift
//  TicTacToe
//
//  Created by Antonio Torres-Ruiz on 6/17/21.
//

// Inspired by: Sean Allen's Tic Tac Toe tutorial on YouTube
// Source to original video and code: https://youtu.be/MCLiPW2ns2w

import SwiftUI

// MARK: TODO: add an app icon, background assets, maybe change the appearance of the rectangle view to look prettier

struct GameView: View {
    // create an instance of the view model
    @StateObject private var viewModel = GameViewModel()
    //@StateObject private var model = GameModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
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

// MARK: TODO: move the custom views to separate files (?)
struct GameBoardView: View {
    var proxy : GeometryProxy
    var body: some View {
        Rectangle()
            .foregroundColor(.blue).opacity(0.5)
            .frame(width: proxy.size.width/3 - 15, height: proxy.size.width/3 - 15)
    }
}

struct PlayerIndicator: View {
    var systemImageName : String
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40, alignment: .center)
            .foregroundColor(.black)
    }
}
