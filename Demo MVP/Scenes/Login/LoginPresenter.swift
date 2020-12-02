//
//  LoginPresenter.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/1/20.
//

import Foundation

class LoginPresenter {


    private var view :LoginProtocol!
    
    init(view:LoginProtocol) {
        self.view = view
    }
    
    func validateUserInputs(userName:String,password:String){
        guard !userName.isEmpty else {
            view.showErrorMessage(message: .emptyEmail)
            return
        }
        guard Validation.isValidEmail(userName) else {
            view.showErrorMessage(message: .enterVaildEmail)
            return
        }
        
        guard !password.isEmpty else {
            view.showErrorMessage(message: .emptyPassword)
            return
        }
        
        guard password.integerValue != nil else {
            view.showErrorMessage(message: .enterVaildPassword)
            return 
        }
        
        guard password.count == 8 else {
            view.showErrorMessage(message: .passwordCount)
            return
        }
        
        view.loginSucessfully()
    }
    
    
  
    
    
}
