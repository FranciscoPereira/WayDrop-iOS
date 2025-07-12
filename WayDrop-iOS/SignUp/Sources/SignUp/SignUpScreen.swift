import SwiftUI
import DesignSystem

public struct SignUpScreen: View {
    public init() {}
    public var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    TextFieldComponent(
                        title: "Name",
                        text: .constant("")
                    )
                    TextFieldComponent(
                        title: "Phone number",
                        text: .constant("")
                    )
                    PasswordTextFieldComponent(
                        title: "Password",
                        text: .constant("")
                    )
                    Spacer()
                    PrimaryButtonComponent(
                        title: "Sign up",
                        action: {}
                    )
                    .padding()
                }
                .frame(minHeight: geometry.size.height)
            }
            .background(Color.background)
        }
    }
    
}

#Preview {
    SignUpScreen()
}
