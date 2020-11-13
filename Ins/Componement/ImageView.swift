//
//  ImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ImageView: View {
       @State var post: Post = posts[0]
       
       var body: some View {
              Image(post.picture)
                     .resizable()
                     .frame(width: 375, height: 375)
                     .scaledToFit()
                     .onTapGesture {
                            imageOnTapGesture()
                     }
              
       }
       
       func imageOnTapGesture() {
              post.isLiked.toggle()
       }
}

struct ImageView_Previews: PreviewProvider {
       static var previews: some View {
              ImageView()
       }
}
