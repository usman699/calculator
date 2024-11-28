//
//  ContentView.swift
//  calculator
//
//  Created by Spark M1 on 28/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            
            
            
            Grid{
                GridRow {
                    ForEach(1..<5) { i in
                        
                        CustomButton(title1: i.description,  action: {
                        }
                                     ,background: Color.gray
                                     ,forgroundColor: Color.white
                        )
                    }
                    
                    
                    }
                    
                GridRow {
                    ForEach(4..<8) { i in
                        
                        CustomButton(title1: i.description,  action: {
                        }
                                     ,background: Color.gray
                                     ,forgroundColor: Color.white
                        )
                    }
                    
                    
                    }
                    
                    
                }
                
                
                
                
                
                
            }
        }}
#Preview {
    ContentView()
}

