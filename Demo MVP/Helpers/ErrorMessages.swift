//
//  ErrorMessages.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/1/20.
//

import Foundation

enum ErrorMessages : String , Error {
    case emptyEmail = "Please Enter your Eamil"
    case enterVaildEmail = "Please Enter Vaild Email"
    case enterVaildPassword = "Please Enter Vaild password"
    case emptyPassword = "Please Enter your password"
    case passwordCount = "Please Enter at least 8 numbers"
}
