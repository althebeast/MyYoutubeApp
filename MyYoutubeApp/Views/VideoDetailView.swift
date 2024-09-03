//
//  VideoDetailView.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import SwiftUI
import YouTubePlayerKit

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack(alignment: .leading) {
                
                //Configure video player
                let youTubePlayer = YouTubePlayer(
                    source: .video(id: video.snippet?.resourceId?.videoId ?? ""),
                    configuration: .init(
                        autoPlay: false
                    )
                )
                
                //Video Player
                YouTubePlayerView(youTubePlayer)
                    .frame(width: proxy.size.width, height: proxy.size.width/1.77778)
                
                //Title and Desc
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text(video.snippet?.title ?? "There's no title")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(video.snippet?.description ?? "There's no description")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
                .padding()
                .scrollIndicators(.hidden)
            }
        }
        
    }
}

#Preview {
    VideoDetailView(video: Video(id: "hello"))
}
