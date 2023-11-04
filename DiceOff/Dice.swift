//
//  Dice.swift
//  DiceOff
//
//  Created by Robert Martinez on 7/4/22.
//

import Foundation

class Dice: Equatable, Identifiable, ObservableObject {
    @Published var value = 1
    @Published var changeAmount = 0.0
    
    var owner = Player.none
    let id = UUID()
    let row: Int
    let col: Int
    let neighbors: Int
    
    static func ==(lhs: Dice, rhs: Dice) -> Bool {
        lhs.id == rhs.id
    }
    
    init(row: Int, col: Int, neighbors: Int) {
        self.row = row
        self.col = col
        self.neighbors = neighbors
    }
}
