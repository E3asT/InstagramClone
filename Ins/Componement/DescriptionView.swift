//
//  DescriptionView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct DescriptionView: View {
       @Binding var post: Post
       
       var body: some View {
              VStack(alignment: .leading, spacing: 10) {
                     HStack(alignment: .lastTextBaseline) {
                            Text("\(String(post.like))")
                            
                            Text("Likes")
                            
                            Spacer()
                     }
                     
                     HStack(alignment: .top) {
                            Text(post.description)
                                   .multilineTextAlignment(.leading)
                                   .lineSpacing(2)
                     }
                     
                     Text("See the \(post.comments) comments")
                            .font(.system(size: 17))
                            .font(.footnote)
                            .foregroundColor(.secondary)
              }
              .padding(.horizontal, 10)
       }
       
}

struct DescriptionView_Previews: PreviewProvider {
       static var previews: some View {
              DescriptionView(post: .constant(posts[1]))
       }
}
