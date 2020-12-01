//
//  Validation.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/1/20.
//

import Foundation


enum Validation {
    
    static  func isValidEmail(_ textData:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: textData)
    }
    
    static func isValidPassword(_ textData:String) -> Bool {
        
        let regularExpression = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"

        let passwordValidation = NSPredicate.init(format: "SELF MATCHES %@", regularExpression)
        return passwordValidation.evaluate(with: textData)
    }
    
}
