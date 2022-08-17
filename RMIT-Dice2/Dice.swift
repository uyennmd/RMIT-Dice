//
//  Dice.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//
import SwiftUI

struct Dice: View {
    @Binding var score: Int
    @Binding var click: Bool
    @State var r1 = RandomDice()
    @State var r2 = RandomDice()
    @State var b1 = RandomDice()
    @State var b2 = RandomDice()
    
    var body: some View {
        VStack {
            HStack {
                Image(DiceRed(number:r1))
                Spacer()
                Image(DiceRed(number:r2))
            }
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .frame(width: 50,height: 50)
                .overlay(
                    Text("VS")
                        .foregroundColor(Color.white)
                        .bold()
                        .font(Font.system(size: 30))
                )
            HStack {
                Image(DiceBlue(number:b1))
                Spacer()
                Image(DiceBlue(number:b2))
            }
            Spacer()
            if (click) {
                if (GamePlay(r1:r1,r2:r2,b1:b1,b2:b2)) {
                    Text("You Won!")
                        .foregroundColor(Color.orange)
                        .bold()
                        .font(Font.system(size: 50))
                } else {
                    Text("You Lose!")
                        .foregroundColor(Color.orange)
                        .bold()
                        .font(Font.system(size: 50))
                }
            }
            Button {
                click = true
                r1 = RandomDice()
                r2 = RandomDice()
                b1 = RandomDice()
                b2 = RandomDice()
                if (GamePlay(r1:r1,r2:r2,b1:b1,b2:b2)) {
                    score += 10
                } else {
                    score -= 10
                }
                
            } label: {
                ButtonView()
            }
            
        }.aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 500)
    }
}

struct Dice_Previews: PreviewProvider {
    static var previews: some View {
        Dice(score: .constant(10), click: .constant(false))
    }
}
