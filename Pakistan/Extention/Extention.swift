//
//  Extention.swift
//  Pakistan
//
//  Created by Arsalan Raza on 25/07/2022.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            
            fatalError("fail to locate \(file) from bundle")
            
        }
        
       guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let laodData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        
        return laodData
    }
}
