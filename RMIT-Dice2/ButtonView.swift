//
//  ButtonView.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.red)
            .frame(width: 150,height: 70)
            .overlay(
                Text("Play")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(Font.system(size: 60))
            )
    }
}



struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

