import SwiftUI

struct ContentView: View {
    let buttons = [
        ["7", "8", "9", "÷"],
        ["4", "5", "6", "×"],
        ["1", "2", "3", "-"],
        ["C", "0", "="]
    ]
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack  {
             
                
                HStack {
                    VStack{
                        // Header text
                        Text("Calculator")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .trailing)  // Aligns text to the trailing edge
                        
                        // Divider (Optional)
                        Color.gray.frame(height: 1).padding(.vertical)
                        
                    }
                }
                
                
                ForEach(buttons ,id: \.self) {row in
                    HStack(spacing:12){
                        ForEach(row , id: \.self) { button in
                            if button == "C" {
                                CustomButton(title: button, action: {}, background: .gray)
                                    
                            }
                            else if button == "-" || button == "=" || button == "×" || button == "÷"  {
                                CustomButton(title: button, action: {}, background: .orange)
                            }
                            else {
                                CustomButton(title: button, action: {}, background: .gray)
                            }
                        }
                    }
                    
             
                }
              
            }
            .padding()
           
            .ignoresSafeArea()
            
            .frame(maxWidth: .infinity , maxHeight: .infinity)
            .background(Color.black)
            
        }
        
    }
}

#Preview {
    ContentView()
}
