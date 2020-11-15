//
//  SidebarView.swift
//  Ins
//
//  Created by Romain Beaujean on 15/11/2020.
//

import SwiftUI

struct SidebarView: View {
       let post: Post = posts[2]
       
       var body: some View {
              HStack(alignment: .center, spacing: 44) {
                     Image(systemName: "house")
                            .onTapGesture {
                                   houseTapGesture()
                            }
                     
                     Image(systemName: "magnifyingglass")
                     
                     Image(systemName: "plus.app")
                     
                     Image(systemName: "suit.heart")
                     
                     Image(post.icon)
                            .resizable()
                            .frame(width: 34, height: 34)
                            .scaledToFit()
                            .clipShape(Circle())
              }
              .font(.title)
              .padding(.all, 15)
       }
       
       func houseTapGesture() {
              
       }
}

struct SidebarView_Previews: PreviewProvider {
       static var previews: some View {
              SidebarView()
       }
}
