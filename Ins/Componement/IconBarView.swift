//
//  IconBarView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct IconBarView: View {
       @State var isHeartTouched = false
       @State var isBookmarkTouched = false
       
       var body: some View {
              VStack {
                     HStack(alignment: .center, spacing: 15) {
                            if !isHeartTouched {
                                   Image(systemName:  "suit.heart")
                                          .onTapGesture {
                                                 heartTapGesture()
                                          }
                            } else {
                                   Image(systemName:  "suit.heart.fill")
                                          .foregroundColor(Color.red.opacity(0.9))
                                          .onTapGesture {
                                                 heartTapGesture()
                                          }
                            }
                            
                            Image(systemName: "bubble.right")
                            
                            Image(systemName: "paperplane")
                            
                            Spacer()
                            VStack {
                                   if !isBookmarkTouched {
                                          Image(systemName: "bookmark")
                                                 .onTapGesture {
                                                        bookmarkGesture()
                                                 }
                                   } else {
                                          Image(systemName: "bookmark.fill")
                                                 .foregroundColor(Color.red.opacity(0.9))
                                                 .onTapGesture {
                                                        bookmarkGesture()
                                                 }
                                   }
                            }
                     }
                     .font(.system(size: 25, weight: .light))
                     .padding(.horizontal, 10)
                     .padding(.vertical, 15)
                     .animation(.default)
              }
       }
       
       func heartTapGesture() {
              isHeartTouched.toggle()
       }
       
       func bookmarkGesture() {
              isBookmarkTouched.toggle()
       }
}

struct IconBarView_Previews: PreviewProvider {
       static var previews: some View {
              IconBarView()
       }
}
