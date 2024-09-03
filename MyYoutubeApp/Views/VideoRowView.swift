//
//  VideoRowView.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import SwiftUI
import CachedAsyncImage

struct VideoRowView: View {
    
    var video: Video
    
    var body: some View {
        
        VStack(alignment: .leading) {
            if let url = URL(string: video.snippet?.thumbnails?.medium?.url ?? "") {
                
                CachedAsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } placeholder: {
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                }
            }
            
            Text(video.snippet?.title ?? "There's no title")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(alignment: .leading)
        }
        .padding(.vertical)
    }
}

#Preview {
    VideoRowView(video: Video(id: "hello"))
}
