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
                     Color("bannerColor")
                            .edgesIgnoringSafeArea(.all)
                     
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
                            SidebarView()
                     }
              }
       }
}

struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
              ContentView()
       }
}
