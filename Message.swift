//
//  Message.swift
//  WolfPractice
//
//  Created by Abby Blancett on 7/3/24.
//
import Foundation

struct Message: Identifiable, Codable, Hashable {
    let id: UUID
    let text: String
    let isIncoming: Bool
    
    init(text: String, isIncoming: Bool) {
        self.id = UUID()
        self.text = text
        self.isIncoming = isIncoming
    }

    // Conformance to Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(text)
        hasher.combine(isIncoming)
    }

    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id && lhs.text == rhs.text && lhs.isIncoming == rhs.isIncoming
    }
}

