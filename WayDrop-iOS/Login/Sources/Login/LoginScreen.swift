import SwiftUI
import DesignSystem

public struct LoginScreen: View {
    public init() {}
//    @ObservedObject var viewModel: LoginViewModel
    
    public var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    TextFieldComponent(title: "Username", text: .constant(""))
                    PasswordTextFieldComponent(title: "Password", text: .constant(""))
                    Spacer()
                    PrimaryButtonComponent(title: "Submit", action: {})
                        .padding()
                }
                .frame(minHeight: geometry.size.height)
            }
            .background(Color.background)
        }
    }
}

#Preview {
    LoginScreen()
}
