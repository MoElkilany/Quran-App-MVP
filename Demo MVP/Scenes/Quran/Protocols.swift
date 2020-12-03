//
//  Protocols.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation

protocol QuranProtocol:class{

    func showProgress()
    func dismissProgress()
    func getDataSucessfully()
    func showErrorMessage(error:String)
//    func navigateTo(quranData:QuranData)
    func didselect(quranData:QuranData)
}

protocol  setCellDataProtocol :class {
    func setUpDateCell(quranData:QuranData)
}
