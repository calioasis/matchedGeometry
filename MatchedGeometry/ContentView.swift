//
//  ContentView.swift
//  MatchedGeometry
//
//  Created by Jeffrey Sherin on 4/27/23.
//

import SwiftUI

// same screen works

struct ContentView: View {
    
        @Namespace private var animation
        @State var showingVideo = false
    
        var body: some View {
            VStack {
            if !showingVideo {
                HStack {
                    Image("cyberpunk")
                        .resizable()
                        .matchedGeometryEffect(id: "cyberpunk", in: animation)
                        .frame(width: 200.0, height: 200.0)
                        .onTapGesture {
                            withAnimation {
                                showingVideo = true
                            }
                        }
                    Spacer()
                }
            } else {
                VideoView(animation: animation)
                    .onTapGesture {
                        withAnimation {
                            showingVideo = false
                        }
                    }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
