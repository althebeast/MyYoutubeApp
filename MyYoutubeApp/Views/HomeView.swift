//
//  HomeView.swift
//  MyYoutubeApp
//
//  Created by Alperen Sarışan on 3.09.2024.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            FeedView()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
