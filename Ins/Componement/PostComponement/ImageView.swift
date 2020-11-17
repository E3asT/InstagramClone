//
//  ImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ImageView: View {
       @Binding var post: Post
       
       @State var isHeartReadyToShow = true
       @State var showHeart = false
       @State var showBrokenHeart = false
       
       var body: some View {
              ZStack {
                     Image(post.image)
                            .resizable()
                            .frame(width: 375, height: 375)
                            .scaledToFit()
                            .onTapGesture(count: 2) {
                                   imageOnTapGesture()
                            }
                     
                     if isHeartReadyToShow {
                            if showHeart {
                                   Image(systemName: "heart.fill")
                                          .foregroundColor(.white)
                                          .font(.system(size: 75))
                                   
                            } else if showBrokenHeart {
                                   Image(systemName: "heart.slash.fill")
                                          .foregroundColor(.white)
                                          .font(.system(size: 75))
                            }
                     }
              }
              .animation(.linear)
              
       }
       
       func imageOnTapGesture() {
              post.isLiked.toggle()
              
              if post.isLiked {
                     post.like += 1
                     isHeartReadyToShow = true
                     showHeart = true
                     vibrationImpact(style: .medium)
                     Timer.scheduledTimer(withTimeInterval: 0.65, repeats: false) { (_) in
                            isHeartReadyToShow = false
                            showHeart = false
                     }
                     
              } else {
                     post.like -= 1
                     isHeartReadyToShow = true
                     showBrokenHeart = true
                     vibrationImpact(style: .medium)
                     Timer.scheduledTimer(withTimeInterval: 0.75, repeats: false) { (_) in
                            isHeartReadyToShow = false
                            showBrokenHeart = false
                     }
              }
       }
       
      func vibrationImpact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
           UIImpactFeedbackGenerator(style: style).impactOccurred()
       }
}

struct ImageView_Previews: PreviewProvider {
       static var previews: some View {
              ImageView(post: .constant(posts[3]))
       }
}
