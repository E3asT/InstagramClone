//
//  ImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ImageView: View {
       @Binding var post: Post
       @State var showHeart = false
       
       var body: some View {
              ZStack {
                     Image(post.picture)
                            .resizable()
                            .frame(width: 375, height: 375)
                            .scaledToFit()
                            .onTapGesture(count: 2) {
                                   imageOnTapGesture()
                                   showHeart = true
                                   Timer.scheduledTimer(withTimeInterval: 0.75, repeats: false) { (_) in
                                          showHeart = false
                                   }
                     }
                     
                     if showHeart {
                            Image(systemName: "heart.fill")
                                   .foregroundColor(.red)
                                   .font(.system(size: 125))
                     }
              }
              .animation(.linear)
              
       }
       
       func imageOnTapGesture() {
              post.isLiked.toggle()
              
              if post.isLiked {
                     post.like += 1
              } else {
                     post.like -= 1
              }
       }
}

struct ImageView_Previews: PreviewProvider {
       static var previews: some View {
              ImageView(post: .constant(posts[1]))
       }
}
