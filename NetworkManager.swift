//
//  NetworkManager.swift
//  WolfPractice
//
//  Created by Abby Blancett on 7/3/24.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    func sendMessage(text: String, completion: @escaping (Bool) -> Void) {
        let url = URL(string: "https://yourserver.com/api/messages")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let messageData = ["text": text, "isIncoming": false] as [String : Any]
        request.httpBody = try? JSONSerialization.data(withJSONObject: messageData, options: [])
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error sending message: \(error)")
                completion(false)
                return
            }
            print("Message sent: \(text)")
            completion(true)
        }.resume()
    }
    
    func fetchMessages(completion: @escaping ([Message]) -> Void) {
        let url = URL(string: "https://yourserver.com/api/messages")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error fetching messages: \(error)")
                completion([])
                return
            }
            
            guard let data = data else {
                completion([])
                return
            }
            
            do {
                let messagesData = try JSONDecoder().decode([Message].self, from: data)
                print("Messages fetched: \(messagesData)")
                completion(messagesData)
            } catch {
                print("Error decoding messages: \(error)")
                completion([])
            }
        }.resume()
    }
}
