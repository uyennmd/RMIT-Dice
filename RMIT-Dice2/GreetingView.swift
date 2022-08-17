//
//  GreetingView.swift
//  RMIT-Dice2
//
//  Created by Uyen Nguyen Minh Duy on 17/08/2022.
//

import SwiftUI

struct GreetingView: View {
    @State private var showingMyHighScore = false
    @Binding var active: Bool
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
                Text("Pair Dice Game")
                    .foregroundColor(Color.red)
                    .bold()
                    .font(Font.system(size: 40))
                Spacer()
                LogoView()
                Spacer()
                Button(action: {
                    active = false
                }, label: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray.opacity(0.7))
                        .padding(9)
                        .frame(width: 230, height:80)
                        .overlay(
                            Text("Play")
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        )
                })
                
                Button {
                    showingMyHighScore.toggle()
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray.opacity(0.7))
                        .padding(9)
                        .frame(width: 230, height:75)
                        .overlay(
                            Text("High Scores")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        )
                }.sheet(isPresented: $showingMyHighScore) {
                    ScoreView()
                }
                Spacer()
                
            }
        }
        
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
