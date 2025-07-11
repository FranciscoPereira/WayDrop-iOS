import SwiftUI

struct WelcomeScreen: View {
    
    var body: some View {
        NavigationStack {
                VStack {
                    Image(uiImage: .checkmark)
                        .padding(.top, 200)
                    Text("Welcome to")
                    Text("WayDrop")
                    Spacer()
                    NavigationLink(destination: WelcomeScreen()) {
                        Text("Sign Up")
                    }
                    NavigationLink(destination: WelcomeScreen()) {
                        Text("Log In")
                    }
                }
        }
    }
}

#Preview {
    WelcomeScreen()
}
