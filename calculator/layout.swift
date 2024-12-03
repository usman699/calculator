import SwiftUI

struct CalculatorView: View {
    @State private var displayText = "0"

    let buttons = [
        ["7", "8", "9", "÷"],
        ["4", "5", "6", "×"],
        ["1", "2", "3", "-"],
        ["C", "0", "=", "+"]
    ]

    var body: some View {
        VStack(spacing: 12) {
            // Display Area
            Text(displayText)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding()

            // Grid for Buttons
            Grid(horizontalSpacing: 12, verticalSpacing: 12) {
                ForEach(buttons, id: \.self) { row in
                    GridRow {
                        ForEach(row, id: \.self) { button in
                            Button(action: {
                                buttonTapped(button)
                            }) {
                                Text(button)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }

    // Button tap handler
    func buttonTapped(_ button: String) {
        switch button {
        case "C":
            displayText = "0"
        case "=":
            // Add logic for calculation
            break
        default:
            if displayText == "0" {
                displayText = button
            } else {
                displayText += button
            }
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

