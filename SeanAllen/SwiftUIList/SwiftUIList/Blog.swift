//
//  Blog.swift
//  SwiftUIList
//
//  Created by Milankumar Panchal on 12/03/22.
//

import SwiftUI

struct Blog: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let viewCount: Int
    let readTime: Int
    let fans: Int
    let blogURL: String
}

struct BlogList {
    static let topBlogs: [Blog] = [
        Blog(
            title: "How to show touches on iOS Device",
            description: "Sometimes you want to enable a tap indicator on your iOS Device (iPhone or Simulator), like a small circle, for touch events so users can easily spot where you have tapped.",
            viewCount: 54000,
            readTime: 3,
            fans: 21,
            blogURL: "https://medium.com/macoclock/how-to-show-touches-on-ios-device-e0d9f00cc6f5"
        ),
        Blog(
            title: "Xcode 12, building for iOS Simulator, but linking in object file built for iOS, file for…",
            description: "Recently, I have updated my Xcode to the latest version (Version 12.2 (12B45b), and my project running fine for real devices. But when I try to run on iOS Simulator I am getting the following error.",
            viewCount: 43000,
            readTime: 3,
            fans: 36,
            blogURL: "https://medium.com/p/xcode-12-building-for-ios-simulator-but-linking-in-object-file-built-for-ios-file-for-8c0cc28ec832"
        ),
        Blog(
            title: "How to simulate poor network conditions on iOS Simulator and iPhone",
            description: "While developing mobile apps that require internet connectivity, it's significant to handle poor network conditions. Because mobile app users will likely to have a much slower network than we use while developing.",
            viewCount: 26000,
            readTime: 4,
            fans: 18,
            blogURL: "https://medium.com/macoclock/how-to-simulate-poor-network-conditions-on-ios-simulator-and-iphone-faf35f0da1b5"
        ),
        Blog(
            title: "What’s new in Xcode 12",
            description: "With an all-new design that looks great on macOS Big Sur, Xcode 12 has customizable font sizes for the navigator, streamlined code completion, new document tabs, and more. And it builds Universal apps by default to support Apple Silicon Macs, without changing a single line of code.",
            viewCount: 19600,
            readTime: 10,
            fans: 30,
            blogURL: "https://medium.com/macoclock/whats-new-in-xcode-12-1d06074bc3fa"
        ),
        Blog(
            title: "How to Disable SwiftLint Rules?",
            description: "In my previous article, we have learned how to integrate SwiftLint into the Project. In this article, we’ll learn how to disable rules. Rules can be disabled either at the project level or source level.",
            viewCount: 17300,
            readTime: 2,
            fans: 13,
            blogURL: "https://medium.com/p/how-to-disable-swiftlint-rules-40dd3d7ba232"
        ),
        Blog(
            title: "Clearing All Notifications in Mac OS X",
            description: "Whenever I open my MacBook after a few days, I end up with multiple notifications (Reminders, Calendar, etc…) and that I have to awfully close one by one by clicking the close button.",
            viewCount: 8400,
            readTime: 3,
            fans: 16,
            blogURL: "https://medium.com/p/clearing-all-notifications-in-mac-os-x-3be0a16eb2a3"
        ),
        Blog(
            title: "An Introduction to MVVM design pattern in Swift",
            description: "Design patterns are incredibly useful, no matter which language or platform you develop for. Every developer should know how to implement them, and most importantly when to apply them.",
            viewCount: 6800,
            readTime: 4,
            fans: 50,
            blogURL: "https://medium.com/macoclock/an-overview-of-the-mvvm-design-pattern-ee0293663e1f"
        ),
        Blog(
            title: "How to Write Unit Tests in Swift Using Xcode",
            description: "Writing Unit Tests are as important as your application code. As a developer, we often ignore to write Unit Tests, because of a tight project deadline.",
            viewCount: 5300,
            readTime: 5,
            fans: 33,
            blogURL: "https://medium.com/macoclock/how-to-write-unit-tests-in-swift-using-xcode-f59196d0ebc3"
        ),
        Blog(
            title: "How to Transfer an iOS App From One Account To other",
            description: "In this article, we’ll learn step by step procedure to transfer an iOS app from one Apple developer account to another.\nThe good news is that even after transferring the app, it will retain all the ratings and reviews. Also, users continue to have access to future updates as well.",
            viewCount: 5200,
            readTime: 3,
            fans: 14,
            blogURL: "https://medium.com/macoclock/how-to-transfer-the-ios-app-from-one-account-to-other-a69cbef3e3b3"
        ),
        Blog(
            title: "Create a Library Using Swift Package Manager in Xcode",
            description: "What is Swift Package Manager (aka SwiftPM or SPM)?\nThe SwiftPM is a tool for managing the distribution of Swift code just like CocoaPods and Carthage.",
            viewCount: 5200,
            readTime: 5,
            fans: 11,
            blogURL: "https://betterprogramming.pub/creating-a-library-using-swift-package-manager-in-xcode-701d5586e953"
        )


        
    ]
}
