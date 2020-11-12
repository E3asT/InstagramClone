//
//  ContentView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ContentView: View {
       var body: some View {
              ZStack {
                     Color(.lightGray).opacity(0.2)
                            .edgesIgnoringSafeArea(.all)
                     
                     VStack {
                            HStack {
                                   Image(systemName: "camera")
                                   
                                   Spacer()
                                   Text("Instagram")
                                   
                                   Spacer()
                                   Image(systemName: "paperplane")
                                          
                            }
                            .padding()
                            .font(.title2)
                            
                            ScrollView {
                                   VStack {
                                          Divider()
                                          StoryView()
                                                 .padding(.top, 15)
                                          
                                          ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                                 PostView()
                                          }
                                   }
                            }
                            
                            Text("UI2")
                                   .font(.title)
                     }
              }
       }
}

struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
              ContentView()
       }
}
