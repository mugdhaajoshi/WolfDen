import SwiftUI

struct AddPostView: View {
    var body: some View {
        ZStack {
            Color(red: 1.0, green: 0.5, blue: 0.5) // Light red color
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
                
                               VStack(spacing: 10) { // Use VStack to arrange texts vertically
                                Text("New Post")
                                    .foregroundColor(.black)
                                    .padding()
                                      .background(Color.white)
                                      .cornerRadius(10)
            }
                
                
                // Replace Text with Image named "avery" from Assets.xcassets
                Image("avery")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
//                    .cornerRadius(25)
                    .padding()
                VStack(alignment: .leading, spacing: 10) {
                                    Text("Name: Mugdha")
                                    Text("Location: Avery Close")
                                    Text("Price: $1700")
                                    Text("Contact Info: 919449")
                                }
                Button(action: {
                    // Add action for continue button here
                }) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
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
        .navigationBarHidden(true) // Hide the default navigation bar
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}

