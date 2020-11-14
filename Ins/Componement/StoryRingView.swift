//
//  StoryRingView.swift
//  Ins
//
//  Created by Romain Beaujean on 14/11/2020.
//

import SwiftUI

struct StoryRingView: View {
       var size: CGFloat = 65
       var lineWidth: CGFloat = 3
       var color = [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))]
       
       let post: Post = posts[0]
       var body: some View {
              Circle()
                     .stroke(
                            LinearGradient(gradient: Gradient(colors: color), startPoint: .topTrailing, endPoint: .bottomLeading),
                            style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                     )
                     .frame(width: size, height: size)
              
              
       }
}

struct StoryRingView_Previews: PreviewProvider {
       static var previews: some View {
              StoryRingView()
       }
}
