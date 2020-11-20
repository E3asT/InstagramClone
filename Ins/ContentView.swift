//
//  ContentView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ContentView: View {
       @State var showStory = false
       
       var body: some View {
              ZStack {
                     if showStory {
                            FeedView(showStory: $showStory)
                            StoryImageView(showStory: $showStory)
                     } else {
                            TabView {
                                   FeedView(showStory: $showStory)
                                          .tabItem { Image(systemName: "house") }
                                   
                                   SearchView()
                                          .tabItem { Image(systemName: "magnifyingglass") }
                                   
                                   ShareContentView()
                                          .tabItem { Image(systemName: "plus.app") }
                                   
                                   LikeView()
                                          .tabItem { Image(systemName: "suit.heart") }
                                   
                                   UserView()
                                          .tabItem {
                                                 Image(systemName: "person.crop.circle")
                                                 
                                          }
                            }
                     }
              }
              .animation(.linear)
       }
}

struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
              ContentView()
       }
}

struct FeedView: View {
       @Binding var showStory : Bool
       
       var body: some View {
              VStack {
                     BannerView()
                     
                     ScrollView {
                            VStack {
                                   Divider()
                                   StoryRawView( showStory: $showStory)
                                          .padding(.top, 15)
                                   
                                   PostView(showStory: $showStory)
                                   Divider()
                            }
                            .background(Color("contentPost"))
                     }
              }
       }
}
