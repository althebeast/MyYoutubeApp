//
//  Video.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import Foundation

struct Video: Decodable {
    
    var id: String
    var snippet: Snippet?
    
}

struct Snippet: Decodable {
    
    var title: String
    var description: String
    
    var thumbnails: Thumbnails?
    var resourceId: ResourceId?
    
}

struct Thumbnails: Decodable {
    
    var medium: ThumbnailSize?
}

struct ThumbnailSize: Decodable {
    
    var url: String
    var width: Int
    var height: Int
}

struct ResourceId: Decodable {
    
    var videoId: String
    
}
