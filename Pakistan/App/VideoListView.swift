//
//  VideoListView.swift
//  Pakistan
//
//  Created by Arsalan Raza on 25/07/2022.
//

import SwiftUI

struct VideoListView: View {
    
    //    PROPERTIES
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSeleted: item.id, videoTitle: item.name)) {
                        VideoListItemView(videos: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
            
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
