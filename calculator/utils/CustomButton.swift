import SwiftUI
struct CustomButton: View {
    let title: String
    let action: () -> Void
    let background: Color

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 28))
                .frame(maxWidth: .infinity, minHeight: 50)
                .padding()
                .foregroundColor(.white)
                .background(background)
                .cornerRadius(8)
        }
        .frame(width: .infinity, height: .infinity) // Explicitly set the width here
        .background(background)
        .cornerRadius(10) // Circular styles removed for proper rectangular resizing
    }
}
