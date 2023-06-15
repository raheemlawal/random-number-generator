//
//  ContentView.swift
//  RandomNumberGenerator
//
//  Created by Raheem Lawal on 6/12/23.
//


import SwiftUI

struct ContentView: View {
    
    @State private var numbersGenerated: Int = 0
    
    var body: some View {
        TabView {
            MainView(numbersGenerated: $numbersGenerated)
            .tabItem {
                Label("Generator", systemImage: "plus")
            }
            StatisticsView(numbersGenerated: $numbersGenerated)
            .tabItem {
                Label("Stats", systemImage: "chart.bar.xaxis")
            }
        }
    }
}
