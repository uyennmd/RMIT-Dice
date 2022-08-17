//
//  Dice.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//
import SwiftUI

struct Dice: View {
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
            Text(GamePlay(r1:r1,r2:r2,b1:b1,b2:b2))
                .foregroundColor(Color.orange)
                .bold()
                .font(Font.system(size: 50))
            
            Button {
                r1 = RandomDice()
                r2 = RandomDice()
                b1 = RandomDice()
                b2 = RandomDice()
            } label: {
                ButtonView()
            }
            
        }.aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 500)
    }
}

struct Dice_Previews: PreviewProvider {
    static var previews: some View {
        Dice()
    }
}
