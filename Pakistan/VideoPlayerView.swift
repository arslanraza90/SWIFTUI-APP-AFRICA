//
//  VideoPlayerView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 29/07/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
//    PROPERTIES
    var videoSeleted: String
    var videoTitle: String
    
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(file: videoSeleted, fileFormate: "mp4")) {
//                Text(videoTitle)
            }
//            .overlay(
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .padding(.top, 6)
//                .frame(width: 32, height: 32, alignment: .top)
//            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle("Video", displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSeleted: "lion", videoTitle: "Lion")
        }
    }
}
