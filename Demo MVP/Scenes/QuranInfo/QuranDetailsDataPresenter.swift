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
        view?.arabicName(arabicName: self.quranDetails?.name ?? "")
        view?.ennglishName(englishName: self.quranDetails?.englishName ?? "")
        view?.numberOfAyahshName(number: self.quranDetails?.numberOfAyahs ?? 0)
        view?.typeName(type: self.quranDetails?.revelationType ?? "")

    }
    
    func navigationTitle ()->String {
        return quranDetails?.name ?? ""
    }
    
   
    
}


