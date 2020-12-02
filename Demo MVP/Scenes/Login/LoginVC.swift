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
        mainView.emilTF.text = "ios@gmail.com"
        mainView.passwordTF.text = "12345678"
        actionButtons()
        presenter = LoginPresenter(view: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        mainView.tosteView.layer.cornerRadius = 20
        self.mainView.tosteView.isHidden = true
        mainView.tosteLable.frame.size = mainView.tosteLable.intrinsicContentSize
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
        
        UIView.animate(withDuration: 1) {
            self.mainView.tosteView.isHidden = false
            self.mainView.tosteLable.text = message.rawValue
        }
        
        

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            
            UIView.animate(withDuration: 1) {
                self.mainView.tosteView.isHidden = true
            }
        }
    }
    
    
    func loginSucessfully() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .white
        self.navigationController?.pushViewController(QuranVC(), animated: true)
    }
}
