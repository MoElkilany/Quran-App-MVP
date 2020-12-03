//
//  QuranInfoVC.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit
class QuranInfoVC: UIViewController {
    
    var presenter: QuranDetailsDataPresenter!

    init(with data:QuranDetailsDataPresenter){
        self.presenter = data
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("the data is \(presenter.quranDetails)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = presenter.quranDetails.name
    }
}


