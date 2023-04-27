//
//  VideoView.swift
//  MatchedGeometry
//
//  Created by Jeffrey Sherin on 4/27/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    let animation: Namespace.ID
    
    private let player = AVPlayer(url: Bundle.main.url(forResource: "cyberpunk", withExtension: "mp4")!)
    
    var body: some View {
        VStack {
            Spacer()
            VideoPlayer(player: player)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.white, lineWidth: 1)
                )
                .matchedGeometryEffect(id: "cyberpunk", in: animation)
                .frame(width: 400.0, height: 400.0)
                .onAppear() {
                    try? AVAudioSession.sharedInstance().setCategory(.playback)
                    player.play()
                }
            Spacer()
        }
    }
}

//struct VideoView_Previews: PreviewProvider {
//    static var previews: some View {
//        VideoView()
//    }
//}
