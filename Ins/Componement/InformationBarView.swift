//
//  InformationBarView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct InformationBarView: View {
       var post: Post = posts[1]
       
       var body: some View {
              HStack(alignment: .center, spacing: 15) {
                     Image(post.icon)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                     
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
              InformationBarView()
       }
}
