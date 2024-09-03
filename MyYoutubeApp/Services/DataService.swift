//
//  DataService.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import Foundation

struct DataService {
    
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getVideos() async -> [Video] {
        
        //Check if api key is correct
        guard apiKey != nil else {
            return [Video]()
        }
        
        //Create the URL
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLivoFK0yDsLdbABNkr-WUQl6LoamkVxIB&key=\(apiKey!)"
        let url = URL(string: urlString)
        
        if let url {
            //Create the request
            let request = URLRequest(url: url)
            let session = URLSession.shared
            
            //Send the request
            do {
                let (data, response) = try await session.data(for: request)
                
                //Parse the returned data
                
                
            } catch {
                print(error)
            }
        }
        
        return [Video]()
        
    }
    
}
