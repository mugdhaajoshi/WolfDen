import SwiftUI

struct ContentView: View {
    @State private var isMenuOpen = false
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    UserProfileSection()

                    SearchBar(text: $searchText)

                    NavigationLink(destination: SearchPlaceView()) {
                        Text("Search for a Place to Rent")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    .padding(.top, 20)

                    NavigationLink(destination: NewRoommateView()) {
                        Text("Need a New Roommate")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    .padding(.top, 10)

                    Spacer()
                }
                .navigationBarTitle("WolfDen", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    withAnimation {
                        isMenuOpen.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                        .foregroundColor(.red)
                }, trailing: HStack {
                    Button(action: {
                        print("Chat tapped")
                    }) {
                        Image(systemName: "message.fill")
                            .imageScale(.large)
                            .foregroundColor(.red)
                    }
                    Button(action: {
                        print("User Profile tapped")
                    }) {
                        Image(systemName: "person.crop.circle")
                            .imageScale(.large)
                            .foregroundColor(.red)
                    }
                })

                if isMenuOpen {
                    SideMenu(isMenuOpen: $isMenuOpen)
                }
            }
        }
    }
}

struct SideMenu: View {
    @Binding var isMenuOpen: Bool

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        isMenuOpen.toggle()
                    }
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.red)
                        .padding()
                }
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Menu Item 1")
                    .padding()
                Text("Menu Item 2")
                    .padding()
                Text("Menu Item 3")
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
        .background(Color.black.opacity(0.5).edgesIgnoringSafeArea(.all))
    }
}

struct UserProfileSection: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
                .padding()

            VStack(alignment: .leading) {
                Text("Soundarya")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Text("View Profile")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding(.horizontal)
        .padding(.top, 20)
    }
}

struct SearchPlaceView: View {
    var body: some View {
        Text("Search for a Place to Rent")
            .font(.largeTitle)
    }
}

struct NewRoommateView: View {
    var body: some View {
        Text("Need a New Roommate")
            .font(.largeTitle)
    }
}

struct SearchBar: UIViewRepresentable {
    @Binding var text: String

    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = "Search"
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
