import SwiftUI

struct ContentView: View {
 
    let buttons = [
        ["7", "8", "9", "÷"],
        ["4", "5", "6", "×"],
        ["1", "2", "3", "-"],
        ["C", "0", "+","="]
    ]
    @Environment(\.colorScheme) var colorScheme

    @State private var addedString: String = ""
    var body: some View {
        NavigationView{
            
            GeometryReader { geometry in
                VStack  {
                    HStack {
                        VStack{
                            // Header text
                            Text(addedString)
                                .foregroundColor(      colorScheme == .dark  ?  .white : .black)
                                .font(.system(size: 35))
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .trailing)  // Aligns text to the trailing edge
                            
                            // Divider (Optional)
                            colorScheme == .dark  ?  Color.gray.frame(height: 1).padding(.vertical) : Color.black.frame(height: 1).padding(.vertical)
                            
                        }
                    }
                    ForEach(buttons ,id: \.self) {row in
                        HStack(spacing:12){
                            
                            ForEach(row , id: \.self) { button in
                                if button == "C" {
                                    CustomButton(title: button, addedString:  $addedString,background:             colorScheme == .dark  ?  .gray : .black.opacity(0.5)   )
                                }
                                else if button == "-" || button == "=" || button == "×" || button == "÷" || button == "+"  {
                                    CustomButton(title: button, addedString:  $addedString,  background: .orange)
                                    
                                }
                                else {
                                    CustomButton(title: button, addedString:  $addedString,  background:         colorScheme == .dark  ?  .gray : .black.opacity(0.5) )
                                    
                                }
                            }
                        }
                        
                        
                    }
                    
            
                }
                .padding()
                .ignoresSafeArea()
                .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .bottom)
                .background(      colorScheme == .dark  ?  Color.black : .white)
            
            }
            .navigationTitle("Calculator")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

#Preview {
    ContentView()
}
