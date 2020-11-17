//
//  StoryImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 16/11/2020.
//

import SwiftUI

struct StoryImageView: View {
       @State var post: Post = posts[0]
       @Binding var showStory : Bool

       
       var body: some View {
              ZStack {
                     Color.black
                            .edgesIgnoringSafeArea(.all)
                     
                     VStack {
                            ZStack {
                                   Image(post.storyImage)
                                          .resizable()
                                          .frame(maxWidth: .infinity)
                                          .cornerRadius(9)
                                   
                                   TopbarStoryView(post: $post, showStory: $showStory)
                            }
                            
                            BottombarStoryView()
                     }
              }
       }
}

struct StoryImageView_Previews: PreviewProvider {
       static var previews: some View {
              StoryImageView(showStory: .constant(false))
       }
}
