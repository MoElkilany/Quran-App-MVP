//
//  QuranPresenter.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation

class QuranPresenter {
    
    private var view:QuranProtocol!
    private let network = QuranNetwork()
    private var quran = [QuranData]()

    
    init(view:QuranProtocol) {
        self.view = view
    }
    
    
    func startAPI(){
        self.view.showProgress()
        network.getWords { (quranData, error) in
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
    
}
