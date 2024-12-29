// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public final class Note: Identifiable {
    public var id = UUID()
    public let title: String
    public var desc: String
    public var lastModified: Date
    
    public init(id: UUID = UUID(), title: String, desc: String, lastModified: Date) {
        self.id = id
        self.title = title
        self.desc = desc
        self.lastModified = lastModified
    }
}

extension Note {
    public static var emptyList: [Note] {[]}
    public static var mockedData: [Note] {
        return [
            Note(
                title: "Grocery List",
                desc: "Buy milk, bread, and eggs",
                lastModified: Date().addingTimeInterval(-3600)
            ),
            Note(
                title: "Meeting Notes",
                desc: "Discussed project roadmap and milestones",
                lastModified: Date().addingTimeInterval(-86400)
            ),
            Note(
                title: "Birthday Reminder",
                desc: "Don't forget to buy a gift for John's birthday",
                lastModified: Date().addingTimeInterval(-604800)
            ),
            Note(
                title: "Workout Plan",
                desc: "Plan for weekly cardio and strength training",
                lastModified: Date().addingTimeInterval(-2592000)
            )
        ]
    }
}
