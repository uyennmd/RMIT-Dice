//
//  LogoView.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 17/08/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            HStack {
                Image("dice-blue-5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .rotationEffect(.degrees(50))
                
                Image("dice-red-2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    
            }
            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
