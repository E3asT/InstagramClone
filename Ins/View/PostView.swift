//
//  PostView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct PostView: View {
       @Binding var showStory : Bool
       
       var body: some View {
              ScrollView {
                     ForEach(posts) { item in
                            UIPostView(post: item, showStory: $showStory)
                     }
              }
       }
}

struct PostView_Previews: PreviewProvider {
       static var previews: some View {
              PostView(showStory: .constant(false))
       }
}
