import SwiftUI

public struct PrimaryButtonComponent: View {
    private let action: () -> Void
    private let title: String
    
    public init(
        title: String,
        action: @escaping () -> Void
    ) {
        self.action = action
        self.title = title
    }
    
    public var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.h3)
                    .foregroundColor(.secondary)
                .frame(
                    height: 50
                )
            }
            .clipShape(.capsule)
            .frame(maxWidth: .infinity)
            .background(Color.primary)
            .clipShape(.capsule)
    }
}

#if DEBUG
#Preview {
    VStack {
        PrimaryButtonComponent(
            title: "Sign Up",
            action: {}
        )
        .padding()
        Spacer()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.background)
}
#endif
