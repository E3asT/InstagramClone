//
//  UIPostView.swift
//  Ins
//
//  Created by Romain Beaujean on 13/11/2020.
//

import SwiftUI

struct UIPostView: View {
       @State var post: Post = posts[1]
       
       var body: some View {
              VStack(spacing: 0) {
                     Divider()
                     InformationBarView(post: $post)
                     
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
              UIPostView()
       }
}
