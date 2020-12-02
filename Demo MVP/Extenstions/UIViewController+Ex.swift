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


//MARK: progressView

extension UIViewController {
    private static var customLoadingView: ProgressView?
    private static var heightAnchor: NSLayoutConstraint?
    private static var widthAnchor: NSLayoutConstraint?
    
    var loadingView: ProgressView? {
        get { return UIViewController.customLoadingView }
        set { UIViewController.customLoadingView = newValue}
    }
    
    func showLoading(){
        DispatchQueue.main.async {
            self.setupLoadingView()
        }
    }
    
    func hideLoading(){
        DispatchQueue.main.async {
            self.removeLoadingView()
        }
    }
    
    private func setupLoadingView(){
        loadingView = Bundle.main.loadNibNamed("ProgressView", owner: self, options: nil)?.first as? ProgressView
        if loadingView != nil{
            currentView().addSubview(loadingView!)
            setupLoadingViewConstraints()
        }
    }
    
    private func setupLoadingViewConstraints(){
        loadingView?.translatesAutoresizingMaskIntoConstraints = false
        loadingView?.centerXAnchor.constraint(equalTo: currentView().centerXAnchor).isActive = true
        loadingView?.centerYAnchor.constraint(equalTo: currentView().centerYAnchor).isActive = true
        loadingView?.widthAnchor.constraint(equalToConstant: currentView().frame.width).isActive = true
        loadingView?.heightAnchor.constraint(equalToConstant: currentView().frame.height).isActive = true
    }
    
    private func removeLoadingView(){
        if loadingView != nil{
            self.loadingView?.removeFromSuperview()
            self.loadingView = nil
        }
    }
    
    private func currentView() -> UIView{
        if let view = self.tabBarController?.view{
            return view
        }else if let view = self.navigationController?.view{
            return view
        }else{
            return self.view
        }
    }
    
    
    
}



