//
//  VideoListView.swift
//  Wildlife Animals
//
//  Created by Loi Pham on 4/6/21.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json").shuffled()
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(
                        destination: Text(item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }//: NAVIGATION-LINK
                } //: LOOP
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Shuffle videos
                        // Note:
                        // shuffle(): a mutating func, shuffling in-place
                        // shuffled(): returns a shuffled array
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NAVIGATION
    }
}

// MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var videos: [Video] = Bundle.main.decode("videos.json").shuffled()
    static var previews: some View {
        VideoListView(videos: videos)
            .previewDevice("iPhone 12 Pro Max")
    }
}
