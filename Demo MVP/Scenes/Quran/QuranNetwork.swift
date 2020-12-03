//
//  QuranNetwork.swift
//  Demo MVP
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation

class QuranNetwork {
    
    static let shared = QuranNetwork()
    func getWords(completion:@escaping([QuranData]?,Error?)->()){
        
        guard let url = URL(string: "https://api.alquran.cloud/v1/surah") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let errors = error{
                completion(nil,errors)
                return
            }
            guard let data = data else {
                completion(nil,error)
                return}
            do{
                let decoder = JSONDecoder()
                let quran  = try decoder.decode(QuranResponse.self, from: data)
                completion(quran.data,nil)
                
            }catch{
                completion(nil,error)
            }
        }
        task.resume()
    }

    
}
