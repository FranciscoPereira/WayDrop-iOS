import SwiftUI

struct SecondaryButtonComponent: View {
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
            .frame(maxWidth: .infinity)
            .background(Color.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color.secondary, lineWidth: 1)
            }
    }
}

#if DEBUG
#Preview {
    VStack {
        SecondaryButtonComponent(
            action: {},
            title: "Log In"
        )
        .padding()
        Spacer()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.background)
}
#endif
