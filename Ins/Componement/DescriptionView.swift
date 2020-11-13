//
//  DescriptionView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct DescriptionView: View {
       @State var post: Post = posts[0]
       
       var body: some View {
              VStack(alignment: .leading, spacing: 10) {
                     HStack(alignment: .lastTextBaseline) {
                            Text(post.like)
                            
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
              DescriptionView()
       }
}
