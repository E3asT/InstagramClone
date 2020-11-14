//
//  StoryView.swift
//  Ins
//
//  Created by Romain Beaujean on 12/11/2020.
//

import SwiftUI

struct StoryView: View {
       @State var post: Post = posts[0]
       
       var body: some View {
              ScrollView(.horizontal, showsIndicators: false) {
                     HStack(spacing: 15) {
                            ForEach(posts) { item in
                                   VStack(spacing: 5) {
                                          ZStack {
                                                 Image(item.icon)
                                                        .resizable()
                                                        .frame(width: 55, height: 55)
                                                        .scaledToFit()
                                                        .clipShape(Circle())
                                                 
                                                 if item.isThereAStory {
                                                        StoryRingView()
                                                 } else {
                                                        StoryRingView(lineWidth: 1, color: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))])
                                                 }
                                          }
                                          
                                          Text(item.name)
                                                 .font(.system(size: 20, weight: .regular))
                                   }
                            }
                     }
                     .padding(.horizontal, 10)
              }
       }
}

struct StoryView_Previews: PreviewProvider {
       static var previews: some View {
              StoryView()
       }
}
