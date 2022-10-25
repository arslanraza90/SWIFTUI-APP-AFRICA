//
//  VideoPlayerHelper.swift
//  Pakistan
//
//  Created by Arsalan Raza on 29/07/2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(file: String, fileFormate: String) -> AVPlayer {
    
    if Bundle.main.url(forResource: file, withExtension: fileFormate) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: file, withExtension: fileFormate)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
