//
//  ProgressView.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/2/20.
//

import UIKit

class ProgressView: UIView {
    
    @IBOutlet weak private var mainView: UIView!
    @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak private var loadingNamedLabel: UILabel!
    
    var loadingName: String = ""{
        didSet{
            self.loadingNamedLabel.text = loadingName
        }
    }
    
    override func draw(_ rect: CGRect) {
        mainView.layer.cornerRadius = 16
    }
}
