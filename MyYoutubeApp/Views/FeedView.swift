//
//  FeedView.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import SwiftUI

struct FeedView: View {
    
    @State private var videos = [Video]()
    @State private var selectedVideo: Video?
    
    var body: some View {
        NavigationStack {
            List(videos) { v in
                VideoRowView(video: v)
                    .onTapGesture {
                        selectedVideo = v
                    }
                    .listRowSeparator(.hidden)
            }
            .padding()
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .task {
                self.videos = await DataService().getVideos()
            }
            .refreshable {
                Task {
                    self.videos = await DataService().getVideos()
                }
            }
            .sheet(item: $selectedVideo) { v in
                VideoDetailView(video: v)
        }
            .navigationTitle("Videos")
        }
    }
}

#Preview {
    FeedView()
        .preferredColorScheme(.dark)
}
