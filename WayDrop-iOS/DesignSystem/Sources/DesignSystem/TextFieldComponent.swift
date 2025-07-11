import SwiftUI

struct TextFieldComponent: View {
    let title: String
    @State var text: String = ""
    
    var body: some View {
        VStack(spacing: Spacing.x4) {
            HStack {
                Text(title)
                    .font(.h3)
                Spacer()
            }
            TextField("", text: $text)
                .frame(height: 50)
                .background(Color.white)
                .clipShape(Capsule())
                .font(.body)
                
        }
        .padding(.horizontal)
    }
}

#if DEBUG
#Preview {
    TextFieldComponent_Preview()
}

struct TextFieldComponent_Preview: View {
    var body: some View {
        VStack {
            TextFieldComponent(title: "Title")
            Spacer()
        }
        .background(Color.background)
    }
}
#endif
