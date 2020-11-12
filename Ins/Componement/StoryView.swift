//
//  StoryView.swift
//  Ins
//
//  Created by Romain Beaujean on 12/11/2020.
//

import SwiftUI

struct StoryView: View {
       let images = Images()
       
       var body: some View {
              ScrollView(.horizontal, showsIndicators: false) {
                     HStack(spacing: 15) {
                            ForEach(0 ..< 15) { item in
                                   VStack(spacing: 5) {
                                          Image(images.icon)
                                                 .resizable()
                                                 .frame(width: 55, height: 55)
                                                 .scaledToFit()
                                                 .clipShape(Circle())
                                          
                                          Text("East")
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
