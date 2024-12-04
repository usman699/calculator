//
//  File.swift
//  calculator
//
//  Created by Spark Solutionz Inc on 03/12/2024.
//

import Foundation
import SwiftUICore

class logicController {
    
    
    var returnString: String = "Default Value"  // Default value
    var array:[String] = []
    static let shared = logicController()
    private init() {}  // Private initializer for singleton pattern
    
    
    func mainfucntion(title:String) -> String{
        
       
        if title == "1" || title == "2" || title == "3" || title == "4"  || title == "6"  || title == "0" || title == "5" || title == "7" || title == "8" || title == "9"
            
            || title == "+" || title == "÷" || title == "-" || title == "×"
            
        {
            array.append(title)
            returnString = array.joined()
        }
        if title == "=" {
            let updatedString = returnString
                .replacingOccurrences(of: "×", with: "*")
                .replacingOccurrences(of: "÷", with: "/")
           
        
            print(updatedString)
            let expression = NSExpression(format:updatedString)
            let value = expression.expressionValue(with: nil, context: nil) as? Int
            array = []
            returnString = String(value!)
          
        }
    
        
            if title == "C"{
                array = []
                
                returnString = array.joined()
            }

            return returnString
            
        }
        
    }
