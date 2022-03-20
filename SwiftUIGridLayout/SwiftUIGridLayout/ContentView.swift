//
//  ContentView.swift
//  SwiftUIGridLayout
//
//  Created by Milankumar Panchal on 18/03/22.
//

import SwiftUI

struct ContentView: View {
    private var columnGrid: [GridItem] = [GridItem(.adaptive(minimum: 50), spacing: 15)]
//  private var columnGrid: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 5), count: 5)
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columnGrid, spacing: 15) {
                    ForEach((0...99), id: \.self) { idx in
                        Image(systemName: symbols[idx % symbols.count])
                            .font(.system(size: 30))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                            .background(Color.random)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }.padding()
            }
            .background(LinearGradient(colors: [Color("GradientYellowStart"), Color("GradientYellowEnd")],
                                       startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
            
            .navigationTitle("Grid Layout Demo")
            .navigationBarTitleDisplayMode(.inline)

        }
        
    }
}

// MARK: - Generatin random color in SwiftUI
extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
