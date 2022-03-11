//
//  ContentView.swift
//  WeatherApp
//
//  Created by Milankumar Panchal on 11/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack {
            GradientView(isNight: $isNight)
            VStack {
                HeaderTitleView(title: "Mumbai, MH")
                CurrentWeatherStatus(imageName: isNight ? "moon.stars.fill" : "sun.max.fill",
                                     temperature: 25)
                HStack(alignment: .center, spacing: 20) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "sun.max.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.dust.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.haze.fill", temperature: 22)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 22)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.rain.fill", temperature: 18)
                }
                
                Spacer()

                Button {
                    print("Button tapped!")
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", titleColor: .blue, backgroundColor: .white)
                }

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - WeatherDayView
struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .semibold, design: .rounded))

        }
    }
}

// MARK: - WeatherDayView
struct GradientView: View {
    @Binding var isNight: Bool
        
    var body: some View {
        let topColor: Color = isNight ? .black : .blue
        let bottomColor: Color = isNight ? .gray : Color("lightBlue")

        LinearGradient(colors: [topColor, bottomColor],
                       startPoint: .top,
                       endPoint: .bottom)
            .ignoresSafeArea()
    }
}

// MARK: - HeaderTitleView
struct HeaderTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.system(size: 30, weight: .semibold, design: .rounded))
            .padding()
    }
}

// MARK: - CurrentWeatherStatus
struct CurrentWeatherStatus: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 130)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .semibold, design: .rounded))
        }
        .padding(.bottom, 40)
    }
}
