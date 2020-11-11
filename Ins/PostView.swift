//
//  PostView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct PostView: View {
       var body: some View {
              VStack(spacing: 0) {
                     Divider()
                     InformationBarView()
                     
                     Divider()
                     ImageView()
                     
                     Divider()
                     IconBarView()
                     
                     DescriptionView()
              }
       }
}

struct PostView_Previews: PreviewProvider {
       static var previews: some View {
              PostView()
       }
}
