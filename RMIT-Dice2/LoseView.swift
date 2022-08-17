//
//  LoseView.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 17/08/2022.
//

import SwiftUI

struct LoseView: View {
    @Binding var active: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.black.opacity(0.2))
            .scaledToFit()
            .frame(width: 400)
            .overlay(
                VStack {
                    Spacer()
                    Text("You are lose")
                        .foregroundColor(Color.red)
                        .bold()
                        .font(Font.system(size: 60))
                    Spacer()
                    Button(action: {
                        active = true
                    }, label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.red.opacity(0.8))
                            .frame(width: 200, height: 70)
                          .overlay(Text("Return")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                                    .foregroundColor(.blue.opacity(0.7)))
                    })
                    Spacer()
                }
                
                
            )
    }
}

struct LoseView_Previews: PreviewProvider {
    static var previews: some View {
        LoseView(active: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
