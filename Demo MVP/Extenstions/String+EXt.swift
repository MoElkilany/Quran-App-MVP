//
//  String+EXt.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/1/20.
//

import Foundation

extension String {
    
    struct NumFormatter {
        static let instance = NumberFormatter()
    }
    
    var doubleValue: Double? {
        return NumFormatter.instance.number(from: self)?.doubleValue
    }
    var integerValue: Int? {
        return NumFormatter.instance.number(from: self)?.intValue
    }
}
