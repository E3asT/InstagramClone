//
//  InformationBarView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct InformationBarView: View {
       @Binding var post: Post
       
       var body: some View {
              HStack(alignment: .center, spacing: 15) {
                     ZStack {
                            Image(post.icon)
                                   .resizable()
                                   .scaledToFill()
                                   .frame(width: 40, height: 40)
                                   .clipShape(Circle())
                            
                            if post.isThereAStory {
                                   StoryRingView(size: 50)
                            } else {
                                   StoryRingView(size: 50, lineWidth: 1, color: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))])
                            }
                     }
                     
                     Text(post.name)
                     
                     
                     Spacer()
                     Image(systemName: "ellipsis")
                            .imageScale(.large)
              }
              .padding(.horizontal, 10)
              .padding(.vertical, 10)
       }
}

struct InformationBarView_Previews: PreviewProvider {
       static var previews: some View {
              InformationBarView(post: .constant(posts[1]))
       }
}
