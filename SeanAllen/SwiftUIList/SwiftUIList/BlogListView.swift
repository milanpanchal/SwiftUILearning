//
//  BlogListView.swift
//  SwiftUIList
//
//  Created by Milankumar Panchal on 12/03/22.
//

import SwiftUI

struct BlogListView: View {
    
    var blogs: [Blog] = BlogList.topBlogs
    
    var body: some View {
        NavigationView {
            List(blogs, id: \.id) { blog in
                NavigationLink {
                    BlogDetailView(blog: blog)
                } label: {
                    BlogCell(blog: blog)
                }
            }.navigationTitle("My Top Blogs")
        }
    }
}

struct BlogCell: View {
    var blog: Blog
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(blog.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                HStack {
                    Text("\(blog.readTime) min read \u{2022} \(blog.fans) Fans")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct BlogListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BlogListView()
                .preferredColorScheme(.light)
            BlogListView()
                .preferredColorScheme(.dark)
        }
    }
}
