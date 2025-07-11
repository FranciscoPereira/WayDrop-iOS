import SwiftUI

struct PrimaryButtonComponent: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
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
            action: {},
            title: "Sign Up"
        )
        .padding()
        Spacer()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.background)
}
#endif
