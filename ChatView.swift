import SwiftUI

struct ChatView: View {
    @State private var newMessageText: String = ""
    @State private var messages: [Message] = []
    let user: User

    var body: some View {
        VStack {
            // Profile section at the top
            VStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding()

                Text(user.name)
                    .font(.headline)
                    .padding(.top, 8)
            }
            .padding()

            // Messages list and input section
            VStack {
                List(messages) { message in
                    MessageRow(message: message)
                }

                HStack {
                    TextField("Message", text: $newMessageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(minHeight: CGFloat(30))

                    Button(action: sendMessage) {
                        Text("Send")
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
                .padding()
            }
            .onAppear {
                loadMessages()
            }
        }
        .navigationBarTitle("Chat", displayMode: .inline)
    }

    private func sendMessage() {
        guard !newMessageText.isEmpty else { return }

        let message = Message(text: newMessageText, isIncoming: false)
        messages.append(message)
        newMessageText = ""

        // Save messages locally
        LocalStorage.shared.saveMessages(messages, for: user)
    }

    private func loadMessages() {
        messages = LocalStorage.shared.loadMessages(for: user)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(user: User(name: "Preview User"))
    }
}


import Foundation

struct User: Identifiable {
    let id: UUID
    let name: String
    var messages: [Message]

    init(id: UUID = UUID(), name: String, messages: [Message] = []) {
        self.id = id
        self.name = name
        self.messages = messages
    }
}

