//
//  QuranInfoVC.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

class QuranInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension QuranInfoVC :SendDataProtocol{
    func sendData(quranData: QuranData) {
        print("QuranInfoVC Data = \(quranData)")
    }
    
    
}
