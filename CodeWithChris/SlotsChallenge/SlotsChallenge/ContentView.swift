//
//  ContentView.swift
//  SlotsChallenge
//
//  Created by Milankumar Panchal on 11/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var slot1 = 1
    @State private var slot2 = 1
    @State private var slot3 = 1
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(credits)")
                .font(.body)
                .fontWeight(.medium)
            Spacer()
            HStack {
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button("Spin") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2, slot2 == slot3 {
                    credits += 15
                } else {
                    credits -= 5
                }
            }
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 40)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            .font(.headline)
            Spacer()

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
