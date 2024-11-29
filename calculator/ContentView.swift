import SwiftUI

struct ContentView: View {
    
    let numberOfRows: CGFloat = 5
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    
    var body: some View {
       
       // Set spacing to 0 for compact layout
            VStack {
               
                Color.black.opacity(0.8)
                GeometryReader { geo in
                    
                    
                    LazyVGrid(columns: columns) {
                    
                    
                        CustomButton(title1: "AC", action: {}, background: Color.secondary, forgroundColor: Color.white)
                        CustomButton(title1: "+/-", action: {}, background: Color.secondary, forgroundColor: Color.white)
                        CustomButton(title1: "%", action: {}, background: Color.secondary, forgroundColor: Color.white)
                        CustomButton(title1: "÷", action: {}, background: Color.secondary, forgroundColor: Color.white)
                        ForEach(7..<10) { i in
                            CustomButton(title1: i.description, action: {}, background: Color.secondary.opacity(0.8), forgroundColor: Color.white)
                        }
                        CustomButton(title1: "x", action: {}, background: Color.orange, forgroundColor: Color.white)
          
                        ForEach(4..<7) { i in
                            CustomButton(title1: i.description, action: {}, background: Color.secondary.opacity(0.8), forgroundColor: Color.white)
                        }
                        CustomButton(title1: "-", action: {}, background: Color.orange, forgroundColor: Color.white)
                 
                        ForEach(1..<4) { i in
                            CustomButton(title1: i.description, action: {}, background: Color.secondary.opacity(0.8), forgroundColor: Color.white)
                        }
                        CustomButton(title1: "+", action: {}, background: Color.orange, forgroundColor: Color.white)
                        
                        CustomButtonlarge(title1: "0", action: {}, background: Color.secondary.opacity(0.8), forgroundColor: Color.white)
                            .frame(width: geo.size.width * 0.5 - 15, height: 60)
                           
                                    
                        CustomButton(title1: ".", action: {}, background: Color.secondary.opacity(0.8), forgroundColor: Color.white)
                        CustomButton(title1: "=", action: {}, background: Color.orange, forgroundColor: Color.white)
                        
                        
                        
                        
                        
                    }
                    
                }
                            
                        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.black)
                 .ignoresSafeArea(edges: .bottom)
                    }
        
                }
    
    


//    Grid {
//        // First row
//        GridRow {
//            CustomButton(title1: "AC", action: {}, background: Color.secondary, forgroundColor: Color.white)
//            CustomButton(title1: "+/-", action: {}, background: Color.secondary, forgroundColor: Color.white)
//            CustomButton(title1: "%", action: {}, background: Color.secondary, forgroundColor: Color.white)
//            CustomButton(title1: "÷", action: {}, background: Color.orange, forgroundColor: Color.white)
//        }
//        
//        // Second row
//        GridRow {
//            ForEach(7..<10) { i in
//                CustomButton(title1: i.description, action: {}, background: Color.gray.opacity(0.8), forgroundColor: Color.white)
//            }
//            CustomButton(title1: "x", action: {}, background: Color.orange, forgroundColor: Color.white)
//        }
//        
//        // Third row
//        GridRow {
//            ForEach(4..<7) { i in
//                CustomButton(title1: i.description, action: {}, background: Color.gray.opacity(0.8), forgroundColor: Color.white)
//            }
//            CustomButton(title1: "-", action: {}, background: Color.orange, forgroundColor: Color.white)
//        }
//        
//        // Fourth row
//        GridRow {
//            ForEach(1..<4) { i in
//                CustomButton(title1: i.description, action: {}, background: Color.gray.opacity(0.8), forgroundColor: Color.white)
//            }
//            CustomButton(title1: "+", action: {}, background: Color.orange, forgroundColor: Color.white)
//        }
//        
//        // Last row with "0" spanning two columns
//        GridRow {
//            CustomButton(title1: "0", action: {}, background: Color.gray.opacity(0.8), forgroundColor: Color.white)
//                .gridCellColumns(2) // Span 2 columns
//            CustomButton(title1: ".", action: {}, background: Color.gray.opacity(0.8), forgroundColor: Color.white)
//            CustomButton(title1: "=", action: {}, background: Color.orange, forgroundColor: Color.white)
//        }
//    }
//    .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure grid takes full screen
//}
//.ignoresSafeArea(edges: .bottom) // Ignore bottom safe area for full screen
//.background(Color.black) // Optional: Set back
