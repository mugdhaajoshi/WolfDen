//
//  AddsuccessView.swift
//  WolfDen
//
//  Created by Mugdha Joshi on 7/8/24.
//

//import SwiftUI
//
//struct AddsuccessView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    AddsuccessView()
//}

import SwiftUI

struct AddsuccessView: View {
    var body: some View {
        ZStack {
            // Background with blurred content
            ZStack {
                Color(red: 1.0, green: 0.8, blue: 0.8) // Light red color
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Image(systemName: "line.horizontal.3") // Hamburger menu icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .padding(.leading)
                        Spacer()
                        Text("WolfDen")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "person.circle.fill") // Profile photo icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                    .padding(.top)
                    
                    Text("New Post")
                        .font(.title3)
                        .padding(.top)
                    
                    Image("avery")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 600, height: 300) // Adjusted size
                        .cornerRadius(17) // Rounded corners
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Name: Mugdha")
                        Text("Location: Avery Close")
                        Text("Price: $1700")
                        Text("Contact Info: 919449")
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.bottom)
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            // Action for left arrow
                        }) {
                            Image(systemName: "arrow.left")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding()
                        }
                        
                        HStack(spacing: 10) {
                            Image("house1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            
                            Image("house2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            
                            Image("house3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            // Action for right arrow
                        }) {
                            Image(systemName: "arrow.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                    .padding(.bottom, 10) // Adjust padding as needed
                    
                    HStack {
                        Spacer()
                        Image(systemName: "house.fill") // Home icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "plus.app.fill") // Add post icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "magnifyingglass") // Search icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.bottom, 30)
                }
            }
            .blur(radius: 10)
            
            // Overlay message box
            VStack {
                Spacer()
                
                Text("Added your post successfully! Click here to edit")
//                    .font(0.15)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding()
                
                Spacer()
            }
        }
        .navigationBarHidden(true) // Hide the default navigation bar
    }
}

struct AddsuccessView_Previews: PreviewProvider {
    static var previews: some View {
        AddsuccessView()
    }
}


