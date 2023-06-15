//
//  MainView.swift
//  RandomNumberGenerator
//
//  Created by Raheem Lawal on 6/14/23.
//

import SwiftUI

struct MainView: View {
    
    @State var randomNumber: Int = Int.random(in: 1...100)
    @Binding var numbersGenerated : Int
    
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Random Number Generator")
                .padding(10)
                .font(
                    .system(size: 25)
                    .weight(.bold)
                )
            Text(String(randomNumber))
            Button("Generate") {
                randomNumber = Int.random(in: 1...100)
                numbersGenerated+=1
            }.buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.green)
        }
    }
}
