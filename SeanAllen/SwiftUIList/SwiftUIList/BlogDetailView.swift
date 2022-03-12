//
//  BlogDetailView.swift
//  SwiftUIList
//
//  Created by Milankumar Panchal on 12/03/22.
//

import SwiftUI

struct BlogDetailView: View {
    var blog: Blog
    
    var body: some View {
        VStack(spacing: 10) {
            BlogMainText(title: blog.title)
            BlogStat(blog: blog)
            BlogDetailText(title: blog.description)
                .padding()
            SwiftUIListButton(title: "View story", destination: blog.blogURL)
        }.padding(.bottom)
    }
}

struct BlogMainText: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .foregroundColor(Color.primary)
    }
}

struct BlogDetailText: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 14, weight: .medium))
            .lineLimit(10)
            .padding(.horizontal)
            .foregroundColor(.secondary)
    }
}

struct BlogStat: View {
    var blog: Blog
    var body: some View {
        HStack(spacing: 10) {
            Text("\(blog.readTime) min read")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text("\u{2022}")
                .foregroundColor(.secondary)
            
            Text("\(blog.fans) fans")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text("\u{2022}")
                .foregroundColor(.secondary)

            Text("\(blog.viewCount) views")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct BlogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BlogDetailView(blog: BlogList.topBlogs.first!)
    }
}
