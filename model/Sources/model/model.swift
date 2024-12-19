// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public final class Note: Identifiable {
    public var id = UUID()
    var title: String
    var desc: String
    var createdAd: Date
    
    init(id: UUID, title: String, desc: String, createdAd: Date) {
        self.id = id
        self.title = title
        self.desc = desc
        self.createdAd = createdAd
    }
}
