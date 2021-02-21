//
//  YouTubeVideoPlayer.swift
//  YouTubeApp
//
//  Created by Christian Hollmann on 21.02.21.
//

import SwiftUI
import WebKit



struct YouTubeVideoPlayer: UIViewRepresentable {
    
    var video: Video
    
    func makeUIView(context: Context) -> WKWebView  {
        let view = WKWebView()
        
        // Set the background color for the view
        view.backgroundColor = UIColor(backgroundColor)
        
        // Create the embed URL
        let embedUrlString = Constants.YT_EMBED_URL + video.videoId
        
        // Load it into the webview
        let url = URL(string: embedUrlString)
        let request = URLRequest(url: url!)
        view.load(request)
        
        return view
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}

struct YouTubeVideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        YouTubeVideoPlayer(video: Video())
    }
}
