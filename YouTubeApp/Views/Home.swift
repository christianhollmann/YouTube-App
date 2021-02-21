//
//  Home.swift
//  YouTubeApp
//
//  Created by Christian Hollmann on 21.02.21.
//

import SwiftUI

let backgroundColor = Color(red: 31 / 255, green: 33 / 255, blue: 36 / 255)

struct Home: View {
    
    @StateObject var model = VideoModel()
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack {
                    ForEach(model.videos, id:\.videoId) { video in
                        // Display a video row for each video
                        VideoRow(videoPreview: VideoPreview(video: video))
                            // Add padding between the rows
                            .padding()
                    }
                }
                .padding(.top, 10)
            }
            
        }
        // Set the text color to be white against the dark background
        .foregroundColor(.white)
        // Set the background color to the custom colour, ignoring the safe area
        .background(backgroundColor.edgesIgnoringSafeArea(.all))
        // Animate transitions in this view to ease out
        .animation(.easeOut)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
