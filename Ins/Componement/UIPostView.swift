//
//  UIPostView.swift
//  Ins
//
//  Created by Romain Beaujean on 13/11/2020.
//

import SwiftUI

struct UIPostView: View {
       @State var post: Post = posts[1]
       @Binding var showStory : Bool
       
       var body: some View {
              VStack(spacing: 0) {
                     Divider()
                     InformationBarView(post: $post, showStory: $showStory)
                     
                     Divider()
                     ImageView(post: $post)
                     
                     Divider()
                     IconBarView(post: $post)
                     
                     DescriptionView(post: $post)
              }
       }
}

struct UIPostView_Previews: PreviewProvider {
       static var previews: some View {
              UIPostView(showStory: .constant(false))
       }
}
