//
//  PostView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct PostView: View {
       var body: some View {
              ScrollView {
                     ForEach(posts) { item in
                            VStack(spacing: 0) {
                                   Divider()
                                   InformationBarView(post: item)
                                   
                                   Divider()
                                   ImageView(post: item)
                                   
                                   Divider()
                                   IconBarView(post: item)
                                   
                                   DescriptionView(post: item)
                            }
                     }
              }
       }
}

struct PostView_Previews: PreviewProvider {
       static var previews: some View {
              PostView()
       }
}
