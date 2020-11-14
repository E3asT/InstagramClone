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
                     VStack {
                            BannerView()
                            
                            ScrollView {
                                   VStack {
                                          Divider()
                                          StoryView()
                                                 .padding(.top, 15)
                                          
                                          PostView()
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
