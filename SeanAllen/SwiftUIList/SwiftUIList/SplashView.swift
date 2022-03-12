//
//  SplashView.swift
//  SwiftUIList
//
//  Created by Milankumar Panchal on 13/03/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                BlogListView()
            } else {
                Text("SwiftUI List Learning")
                    .font(.largeTitle)
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
