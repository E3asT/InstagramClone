//
//  ImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ImageView: View {
       @Binding var post: Post
       
       var body: some View {
              Image(post.picture)
                     .resizable()
                     .frame(width: 375, height: 375)
                     .scaledToFit()
                     .onTapGesture(count: 2) {
                            imageOnTapGesture()
                     }
              
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
