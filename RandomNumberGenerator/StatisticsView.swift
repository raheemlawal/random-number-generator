//
//  StatisticsView.swift
//  RandomNumberGenerator
//
//  Created by Raheem Lawal on 6/14/23.
//

import SwiftUI

struct StatisticsView: View {
    
    @Binding var numbersGenerated: Int
    
    var body: some View {
        Text("Numbers generated: " + String(numbersGenerated))
    }
}
