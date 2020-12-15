//
//  UserView.swift
//  Ins
//
//  Created by Romain Beaujean on 16/11/2020.
//

import SwiftUI

struct UserView: View {
       @State var post: Post = posts[3]
       
       var body: some View {
              ScrollView {
                     VStack {
                            TopView(post: $post)
                            
                            BannerProfileView(post: $post)
                            
                            DescriptionProfilView(post: $post)
                            
                            ChangeProfilButtonView()
                     }
                     .padding(.horizontal, 20)
              }
       }
}

struct UserView_Previews: PreviewProvider {
       static var previews: some View {
              UserView()
       }
}



struct TopView: View {
       @Binding var post: Post
       
       var body: some View {
              HStack {
                     Text(post.name)
                            .bold()
                     
                     Spacer()
                     Image(systemName: "plus")
                     
                     Image(systemName: "line.horizontal.3")
              }
              .font(.title)
       }
}

struct BannerProfileView: View {
       @Binding var post: Post
       
       var body: some View {
              HStack {
                     Image(post.image)
                            .resizable()
                            .frame(width: 75, height: 75)
                            .clipShape(Circle())
                            .scaledToFit()
                     
                     Spacer()
                     
                     HStack(spacing: 15) {
                            VStack {
                                   Text("13")
                                          .bold()
                                   
                                   Text("Publications")
                                          .font(.footnote)
                            }
                            
                            VStack {
                                   Text("98")
                                          .bold()
                                   
                                   Text("Followers")
                                          .font(.footnote)
                            }
                            
                            VStack {
                                   Text("85")
                                          .bold()
                                   
                                   Text("Abonnement")
                                          .font(.footnote)
                            }
                     }
              }
       }
}



struct DescriptionProfilView: View {
       @Binding var post: Post
       
       var body: some View {
              HStack {
                     VStack(alignment: .leading, spacing: 5){
                            Text(post.name)
                                   .bold()
                            
                            Text("That's a simple descriptions")
                     }
                     
                     Spacer()
              }
              .padding(.vertical, 10)
       }
}



struct ChangeProfilButtonView: View {
       var body: some View {
              Button(action: {}, label: {
                     Text("Change profil")
                            .foregroundColor(Color.black)
              })
              .frame(width: 300, height: 30)
              .border(Color.secondary, width: 1)
              .cornerRadius(3.0)
              .padding(.vertical, 10)
       }
}
