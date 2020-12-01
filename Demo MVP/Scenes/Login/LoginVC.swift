//
//  LoginVC.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/1/20.
//

import UIKit

class LoginVC: UIViewController {
    
    
    var mainView: LoginView {
        return view as! LoginView
    }
    var presenter : LoginPresenter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButtons()
        presenter = LoginPresenter(view: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func actionButtons(){
        mainView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped(){
          presenter.validateUserInputs(userName: mainView.emilTF.text ?? "", password: mainView.passwordTF.text ?? "" )
    }
}



extension LoginVC : LoginProtocol {
    func showErrorMessage(message: ErrorMessages) {
        self.presentAlert(title: .Error, message: message.rawValue, buttonTitle: .ok)
        
    }
    
    func loginSucessfully() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        self.navigationController?.pushViewController(QuranVC(), animated: true)
    }
}


