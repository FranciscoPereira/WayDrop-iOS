import SwiftUI
import Welcome
import SignUp
import Login
import Navigation

struct ContentView: View {
    @StateObject private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            WelcomeScreen()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .welcome: WelcomeScreen()
                    case .signup: SignUpScreen()
                    case .login: LoginScreen()
                    case .idVerification: Text("idVerification")
                    case .parcelVerification: Text("parcelVerification")
                    case .parcelDimensions: Text("parcelDimensions")
                    case .deliveryMethod: Text("deliveryMethod")
                    case .paymentMethod: Text("paymentMethod")
                    case .deliveryDetails: Text("deliveryDetails")
                    case .deliveryConfirmation: Text("deliveryConfirmation")
                    }
                }
        }
        .environmentObject(router)
    }
}

#Preview {
    ContentView()
}
