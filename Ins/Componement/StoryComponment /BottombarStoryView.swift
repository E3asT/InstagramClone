//
//  BottombarStoryView.swift
//  Ins
//
//  Created by Romain Beaujean on 16/11/2020.
//

import SwiftUI

struct BottombarStoryView: View {
       @State var isTextFieldUsed = false
       @State var bindedText = ""
       
       var body: some View {
              HStack {
                     Text("Send a message")
                            .foregroundColor(.white)
                            .onTapGesture {
                                   isTextFieldUsed.toggle()
                            }
                     
                     Spacer()
                     if !isTextFieldUsed {
                            Image(systemName: "paperplane")
                                   .foregroundColor(.white)
                                   .padding(.leading, 20)
                     }
              }
              .padding(.horizontal, 16)
              .padding(.vertical)
       }
}

struct BottombarStoryView_Previews: PreviewProvider {
       static var previews: some View {
              BottombarStoryView()
                     .preferredColorScheme(.dark)
       }
}
