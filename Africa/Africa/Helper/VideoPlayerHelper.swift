//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Gowtham Bujju on 03/04/23.
//

import Foundation
import AVKit

var videoPlayer:AVPlayer?

func playvideo(fileName:String, fileFormat:String) -> AVPlayer{
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil{
        videoPlayer = AVPlayer(url:Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
