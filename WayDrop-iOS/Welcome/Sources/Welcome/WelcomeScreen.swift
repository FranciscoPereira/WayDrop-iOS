import SwiftUI
import DesignSystem
import Navigation

public struct WelcomeScreen: View {
    @EnvironmentObject private var router: Router
    public init() {}
    
    public var body: some View {
        VStack {
            Icons.main
                .padding(.top, 200)
            Text("Welcome to")
                .font(.h2)
                
            Text("WayDrop")
                .font(.h2)
            Spacer()
            VStack(spacing: Spacing.x8) {
                NavigationLink(destination: WelcomeScreen()) {
                    PrimaryButtonComponent(title: "Sign up") {
                        router.navigate(to: .signup)
                    }
                }
                NavigationLink(destination: WelcomeScreen()) {
                    SecondaryButtonComponent(title: "Log In") {
                        router.navigate(to: .login)
                    }
                }
            }
            .padding(.horizontal)
        }
        .background(Color.background)
    }
}

#Preview {
    WelcomeScreen()
}
