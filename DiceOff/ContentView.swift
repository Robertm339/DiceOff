//
//  ContentView.swift
//  DiceOff
//
//  Created by Robert Martinez on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var game = Game(rows: 8, columns: 11)
    
    var body: some View {
        VStack(spacing: 5) {
            Text("Dice Off")
                .font(.largeTitle.bold())
            
            HStack(spacing: 20) {
                Text("Green: \(game.greenScore)")
                    .foregroundColor(.green)
                    .font(game.activePlayer == .green ? .title.bold() : .title)
                
                Text("Red: \(game.redScore)")
                    .foregroundColor(.green)
                    .font(game.activePlayer == .red ? .title.bold() : .title)
            }
            
            ForEach(game.rows.indices, id: \.self) { row in
                HStack(spacing: 5) {
                    ForEach(game.rows[row]) { dice in
                        DiceView(dice: dice)
                            .onTapGesture {
                                game.increment(dice)
                            }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
