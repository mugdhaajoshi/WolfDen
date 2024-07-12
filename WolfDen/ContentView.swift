//
//  ContentView.swift
//  WolfDen
//
//  Created by Udita Pericharla on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var fullName = ""
    @State private var school = ""
    @State private var year = ""
    @State private var housingType = ""
    @State private var preferredBedrooms = ""
    @State private var priceRange = ""
    @State private var preferredRoommates = ""
    @State private var aboutMe = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Wolf Profile")
                    .font(.title2)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                
                Group {
                    TextField("Full Name", text: $fullName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("School", text: $school)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Year", text: $year)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .font(.body)
                .padding(.horizontal)
                
                Text("Housing Preferences")
                    .font(.headline)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .padding(.horizontal)
                
                Group {
                    TextField("Type (Apartment/Bedroom/Townhome/House)", text: $housingType)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Preferred Bedrooms", text: $preferredBedrooms)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Price Range", text: $priceRange)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .font(.body)
                .padding(.horizontal)
                
                Text("Preferred Roommate Details")
                    .font(.headline)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .padding(.horizontal)
                
                TextField("Enter preferred roommates details", text: $preferredRoommates)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.body)
                    .padding(.horizontal)
                
                Text("About Me")
                    .font(.headline)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .padding(.horizontal)
                
                TextField("Tell us about yourself", text: $aboutMe)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.body)
                    .padding(.horizontal)
                
                Button(action: {
                    saveProfile()
                }) {
                    Text("Save Profile")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.vertical)
        }
    }
    
    private func saveProfile() {
        let profileData: [String: Any] = [
            "fullName": fullName,
            "school": school,
            "year": year,
            "housingType": housingType,
            "preferredBedrooms": preferredBedrooms,
            "priceRange": priceRange,
            "preferredRoommates": preferredRoommates,
            "aboutMe": aboutMe
        ]
        
        UserDefaults.standard.set(profileData, forKey: "userProfile")
        
    }
}
