//
//  MessageRow.swift
//  WolfPractice
//
//  Created by Abby Blancett on 7/3/24.
//

import SwiftUI

struct MessageRow: View {
    var message: Message

    var body: some View {
        HStack {
            if message.isIncoming {
                Text(message.text)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
            } else {
                Spacer()
                Text(message.text)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    
            }
        }
        .padding(.horizontal)
    }
}
#Preview {
    MessageRow(message: Message(text: "hi", isIncoming: false))
}
