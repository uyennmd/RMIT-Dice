//
//  ContentView.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("rmit-casino-welcome-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                Spacer()
                Dice()
                Spacer()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
