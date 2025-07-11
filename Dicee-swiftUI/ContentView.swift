//
//  ContentView.swift
//  Dicee-swiftUI
//
//  Created by Juan Camilo Victoria Pacheco on 11/07/25.
//

import SwiftUI

struct ContentView: View {
  
  @State var leftDiceNumber: Int = 1
  @State var rightDiceNumber: Int = 1
  
  var body: some View {
    ZStack {
      Image(.background)
        .resizable()
        .ignoresSafeArea()
      VStack {
        Image(.diceeLogo)
        
        Spacer()
        
        HStack() {
          DiceView(diceNumber: leftDiceNumber)
          DiceView(diceNumber: rightDiceNumber)
        }
        .padding(.horizontal)
        
        Spacer()
        
        Button{
          leftDiceNumber = Int.random(in: 1...6)
          rightDiceNumber = Int.random(in: 1...6)
        } label: {
          Text("Roll")
            .font(.system(size: 50))
            .fontWeight(.heavy)
            .foregroundStyle(.white)
        }
        .padding()
        .background(Color.red)
        .clipShape(.rect(cornerRadius: 5))
      }
      .padding()
    }
  }
}

struct DiceView: View {
  var diceNumber: Int
  
  var body: some View {
    Image("dice\(diceNumber)")
      .resizable()
      .scaledToFit()
      .padding()
  }
}

#Preview {
  ContentView()
}
