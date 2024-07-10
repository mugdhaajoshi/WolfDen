//
//  HomeView.swift
//  WolfPractice
//
//  Created by Abby Blancett on 7/10/24.
//
import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    @State private var searchResults: [User] = []

    let allUsers: [User] = (1...10).map { User(name: "Wolf \($0)") }
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                HStack{
                    
                    Text("Find a Wolf")
                        .padding()
                        .scaleEffect(CGSize(width: 2.0, height: 2.0))
                        .bold()
                        .foregroundStyle(Color.red)
                }
                TextField("Search Denmates", text: $searchText, onCommit: searchUsers)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                List(searchResults.isEmpty ? allUsers : searchResults) { user in
                    NavigationLink(destination: ChatView(user: user)) {
                        HStack {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .shadow(radius: 5)

                            Text(user.name)
                                .font(.headline)
                                .padding(.leading)
                        }
                    }
                }
            }
       
        }
    }
    
    private func searchUsers() {
        searchResults = allUsers.filter { $0.name.lowercased().contains(searchText.lowercased()) }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
