//
//  ContentView.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var click = false
    @State var active = false
    var body: some View {
        ZStack {
            if (active) {
                WelcomeView()
            } else {
                ZStack {
                    ZStack {
                        Color.green
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            Image("rmit-casino-welcome-logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 350)
                            HStack {
                                Spacer()
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.black.opacity(0.3))
                                    .padding(15)
                                    .frame(width: 150, height:80)
                                    .overlay(
                                        Text("Score: " + String(score))
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black .opacity(0.6))
                                    )
                            }
                            Spacer()
                            Dice(score: $score, click: $click)
                            Spacer()
                            
                           
                        }
                        

                    }
                    .blur(radius: (score <= 0 && click) ? 30: 0)
                    
                    if (score <= 0 && click) {
                        LoseView(active: $active)
                    }
                }
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
