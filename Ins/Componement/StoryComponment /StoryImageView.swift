//
//  StoryImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 16/11/2020.
//

import SwiftUI

struct StoryImageView: View {
       @State var viewState = CGSize.zero
       @State var dismissView = false
       @State var post: Post = posts[2]
       
       @Binding var showStory : Bool
       
       
       var body: some View {
              ZStack {
                     Color.black.opacity(dismissView ? 0.5 : 1)
                            .edgesIgnoringSafeArea(.all)
                     
                     ZStack {
                            VStack {
                                   ZStack {
                                          Image(post.storyImage)
                                                 .resizable()
                                                 .frame(width: 375, height: 673)
                                                 .cornerRadius(9)
                                          
                                          TopbarStoryView(post: $post, showStory: $showStory)
                                   }
                                   
                                   BottombarStoryView()
                            }
                     }
                     .rotation3DEffect(
                            Angle(degrees: dismissView ? -7 : 0),
                            axis: (x: dismissView ? -viewState.height : 0, y: 0, z: 0)
                     )
                     .offset(y: viewState.height)
                     .animation(.linear)
                     .gesture(
                            DragGesture()
                                   .onChanged { value in
                                          onChangeEvent(value: value)
                                   }
                                   
                                   .onEnded { value in
                                          onEndedEvent(value: value)
                                   }
                     )
              }
       }
       
       func onChangeEvent(value:DragGesture.Value) {
              viewState = value.translation
              
              dismissView = true
       }
       
       func onEndedEvent(value:DragGesture.Value) {
              if self.viewState.height > 125 {
                     showStory = false
              }
              
              dismissView = false
              
              viewState = .zero
       }
}

struct StoryImageView_Previews: PreviewProvider {
       static var previews: some View {
              StoryImageView(showStory: .constant(false))
       }
}
