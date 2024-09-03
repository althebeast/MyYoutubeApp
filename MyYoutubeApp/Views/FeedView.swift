//
//  FeedView.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import SwiftUI

struct FeedView: View {
    
    @State private var videos = [Video]()
    
    var body: some View {
        List(videos) { v in
            Text(v.snippet?.title ?? "there's no title")
        }
            .task {
                self.videos = await DataService().getVideos()
            }
    }
}

#Preview {
    FeedView()
}
