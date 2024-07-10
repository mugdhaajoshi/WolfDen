//
//  LocalStorage.swift
//  WolfPractice
//
//  Created by Abby Blancett on 7/3/24.
//
import Foundation

struct LocalStorage {
    static let shared = LocalStorage()
    
    func saveMessages(_ messages: [Message], for user: User) {
        let key = "messages_\(user.id.uuidString)"
        let data = try? JSONEncoder().encode(messages)
        UserDefaults.standard.set(data, forKey: key)
    }
    
    func loadMessages(for user: User) -> [Message] {
        let key = "messages_\(user.id.uuidString)"
        guard let data = UserDefaults.standard.data(forKey: key),
              let messages = try? JSONDecoder().decode([Message].self, from: data) else {
            return []
        }
        return messages
    }
}
