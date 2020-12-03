//
//  quranDetailsPresenter.swift
//  Demo MVP
//
//  Created by mohamed sayed on 12/3/20.
//

import Foundation


class QuranDetailsDataPresenter {
    
    let quranDetails: QuranData?
    private var view  : QuranDetailsProtocol?
    
    init(with data: QuranData?,with view: QuranDetailsProtocol?) {
        self.quranDetails = data
        self.view = view
    }
    
    func viewDidLoad(){
        view?.getDataSucessfully()
        setEnglishData()
    }
    
    func navigationTitle ()->String {
        return quranDetails?.name ?? ""
    }
    
    func setEnglishData(){
        view?.printEnglishName(englishName: quranDetails?.englishName ?? "" )
    }
    
}


