//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Milankumar Panchal on 11/03/22.
//

import SwiftUI

// MARK: - WeatherButton
struct WeatherButton: View {
    var title: String
    var titleColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .foregroundColor(titleColor)
            .background(backgroundColor)
            .font(.system(size: 16, weight: .semibold, design: .rounded))
            .cornerRadius(10)
    }
}
