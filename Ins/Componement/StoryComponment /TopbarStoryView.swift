//
//  TopbarStoryView.swift
//  Ins
//
//  Created by Romain Beaujean on 16/11/2020.
//

import SwiftUI

struct TopbarStoryView: View {
       @Binding var post: Post
       @Binding var showStory : Bool
       
       var body: some View {
              VStack {
                     HStack {
                            Image(post.icon)
                                   .resizable()
                                   .scaledToFit()
                                   .clipShape(Circle())
                                   .frame(width: 60, height: 60)
                            
                            Text(post.name)
                            
                            Spacer()
                            Image(systemName: "ellipsis")
                                   .imageScale(.large)
                            
                            Image(systemName: "xmark")
                                   .font(.system(size: 35))
                                   .onTapGesture {
                                          xmarkTapGesture()
                                   }
                            
                     }
                     .foregroundColor(.white)
                     .padding(.horizontal, 16)
                     
                     Spacer()
              }
              .padding(.top, 16)
       }
       
       func xmarkTapGesture() {
              showStory = false
       }
}

struct TopbarStoryView_Previews: PreviewProvider {
       static var previews: some View {
              TopbarStoryView(post: .constant(posts[2]), showStory: .constant(false))
                     .preferredColorScheme(.dark)
       }
}
