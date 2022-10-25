//
//  VideoListItem.swift
//  Pakistan
//
//  Created by Arsalan Raza on 28/07/2022.
//

import SwiftUI

struct VideoListItemView: View {
//    PROPERTIES
    
    var videos: Video
    
    var body: some View {
        HStack(spacing: 20) {
            ZStack {
                Image(videos.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .cornerRadius(4)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text(videos.name)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text(videos.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(videos: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
