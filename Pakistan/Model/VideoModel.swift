//
//  VideoModel.swift
//  Pakistan
//
//  Created by Arsalan Raza on 28/07/2022.
//

import Foundation

class Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
//    computed property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
