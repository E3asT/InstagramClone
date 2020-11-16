//
//  ContentView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ContentView: View {
       let post: Post = posts[2]
       
       var body: some View {
              ZStack {
                     TabView {
                            FeedView()
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
}

struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
              ContentView()
       }
}









struct FeedView: View {
       var body: some View {
              VStack {
                     BannerView()
                     
                     ScrollView {
                            VStack {
                                   Divider()
                                   StoryView()
                                          .padding(.top, 15)
                                   
                                   PostView()
                                   Divider()
                            }
                            .background(Color("contentPost"))
                     }
              }
       }
}
