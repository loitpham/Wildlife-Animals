//
//  VideoModel.swift
//  Wildlife Animals
//
//  Created by Loi Pham on 4/6/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
