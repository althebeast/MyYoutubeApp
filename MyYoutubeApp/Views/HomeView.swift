//
//  HomeView.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var videos = [Video]()
    
    var body: some View {
        TabView {
            FeedView()
        }
        .padding()
        .task {
            self.videos = await DataService().getVideos()
        }
    }
}

#Preview {
    HomeView()
}
