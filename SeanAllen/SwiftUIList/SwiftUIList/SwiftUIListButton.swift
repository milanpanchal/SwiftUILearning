//
//  SwiftUIListButton.swift
//  SwiftUIList
//
//  Created by Milankumar Panchal on 13/03/22.
//

import SwiftUI

struct SwiftUIListButton: View {
    var title: String
    var destination: String
    var body: some View {
        Link(destination: URL(string: destination)!) {
            Text(title)
                .bold()
                .font(.title2)
                .frame(width: 280, height: 50)
                .background(Color(.systemRed))
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct SwiftUIListButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIListButton(title: "View story", destination: "")
    }
}
