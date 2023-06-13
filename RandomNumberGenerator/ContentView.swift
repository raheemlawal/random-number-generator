//
//  ContentView.swift
//  RandomNumberGenerator
//
//  Created by Raheem Lawal on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var randomNumber: Int = Int.random(in: 1...100)
    
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
            }.buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
