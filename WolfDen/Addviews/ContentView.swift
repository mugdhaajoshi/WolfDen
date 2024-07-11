//
//  ContentView.swift
//  WolfDen
//
//  Created by Mugdha Joshi on 6/28/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 1.0, green: 0.5, blue: 0.5)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(systemName: "line.horizontal.3") // Hamburger menu icon
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.black)
                                                .padding(.leading)
                                        
                    GeometryReader { geometry in
                        Text("WolfDen")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: geometry.size.width, alignment: .center)
                    }
                    .frame(height: 50)
                    Spacer()
                    Image(systemName: "person.circle.fill") // Profile photo icon
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 50)
                        .foregroundColor(.black)
                        .padding(.trailing)
                }
                .padding(.top)
                
                Spacer()
                
                VStack(spacing: 20) { // Use VStack to arrange texts vertically
                    Text("WolfDen would like to access your Photos")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    Text("Select photos")
                    
                    Text("Allow access to all photos")
                    
                    Text("Don’t allow")
                    
                    Button(action: {
                        // Add action for continue button here
                    }) {
                        Text("Continue")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                Spacer()
                
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

