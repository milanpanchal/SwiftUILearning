//
//  SplashView.swift
//  SwiftUIGridLayout
//
//  Created by Milankumar Panchal on 20/03/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                ContentView()
            } else {
                Text("SwiftUI\nGrid Layout Demo")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .font(.system(.headline))
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}
