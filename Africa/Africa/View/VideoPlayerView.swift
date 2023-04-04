//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Gowtham Bujju on 03/04/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var VideoSelected:String
    var videoTitle:String
    var body: some View {
        VStack {
            VideoPlayer(player:playvideo(fileName: VideoSelected, fileFormat: "mp4")){
                
            }.overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32)
                    .padding(.top,6)
                    .padding(.horizontal,6)
                ,alignment: .topLeading
            
        )
        }//Vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(VideoSelected: "lion", videoTitle: "Lion")
        }
    }
}
