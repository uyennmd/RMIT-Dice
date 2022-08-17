//
//  GamePlay.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//

import Foundation

func RandomDice ()-> Int {
    let number = [1, 2, 3, 4, 5, 6]
    return number.randomElement()!
}

func DiceBlue (number: Int)-> String {
    switch number {
    case 1:
        return "dice-blue-1"
    case 2:
        return "dice-blue-2"
    case 3:
        return "dice-blue-3"
    case 4:
        return "dice-blue-4"
    case 5:
        return "dice-blue-5"
    case 6:
        return "dice-blue-6"
    default:
        return "dice-blue-6"
    }
}

func DiceRed (number: Int)-> String {
    switch number {
    case 1:
        return "dice-red-1"
    case 2:
        return "dice-red-2"
    case 3:
        return "dice-red-3"
    case 4:
        return "dice-red-4"
    case 5:
        return "dice-red-5"
    case 6:
        return "dice-red-6"
    default:
        return "dice-red-6"
    }
}

func GamePlay (r1: Int, r2: Int, b1: Int, b2: Int) -> String {
    if ((r1 + r2) < (b1 + b2)) {
        return "You Won"
    } else {
        return "You Lose"
    }
}


