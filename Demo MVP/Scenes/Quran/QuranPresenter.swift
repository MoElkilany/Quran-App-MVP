//
//  QuranPresenter.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation

class QuranPresenter {

    private var view:QuranProtocol!
     var quran = [QuranData]()
    let quranNavigationTitle = "Quran"
    
    init(view:QuranProtocol) {
        self.view = view
    }
    
    
    
    func startAPI(){
        self.view.showProgress()
        QuranNetwork.shared.getWords { (quranData, error) in
            self.view.dismissProgress()
            
            if   error != nil  {
                self.view.showErrorMessage(error:error?.localizedDescription ?? "")
            }
            if let  quranData = quranData {
                DispatchQueue.main.async {
                    self.quran = quranData
                    self.view.getDataSucessfully()
                }
            }
        }
    }

    func getTableCount()->Int{
        return quran.count
    }
    
    func setCellData(cell:setCellDataProtocol,index:Int){
        cell.setUpDateCell(quranData: quran[index])
    }
    
    func didSelect(index:Int){
        self.view.didselect(quranData: quran[index], index: index)
    }
}
