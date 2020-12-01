//
//  UIViewController+Ex.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/29/20.
//

import UIKit


enum AlertErrorTitles : String {
    case Error = "Error"
    case ServerError = "ServerError"
}

enum AlertActionTitles : String {
    case ok = "ok"
}


extension UIViewController {
    
    func presentAlert(title:AlertErrorTitles , message:String , buttonTitle:AlertActionTitles){
        DispatchQueue.main.async {
            let ac = UIAlertController(title: title.rawValue, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: buttonTitle.rawValue, style: .cancel)
            ac.addAction(action)
            ac.modalPresentationStyle = .overFullScreen
            ac.modalTransitionStyle = .crossDissolve
            self.present(ac, animated: true)
        }
    }
}


