//
//  QuranResponse.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation

struct QuranResponse : Codable {
    var code: Int?
    var status: String?
    var data: [QuranData]?
}

// MARK: - Datum
struct QuranData :Codable  {
    var number: Int?
    var name, englishName, englishNameTranslation: String?
    var numberOfAyahs: Int?
    var revelationType: String?
}
