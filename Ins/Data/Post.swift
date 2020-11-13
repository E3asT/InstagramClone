//
//  Post.swift
//  Ins
//
//  Created by Romain Beaujean on 12/11/2020.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
       let id = UUID()
       var name: String
       var icon: String
       var picture: String
       var description: String
       var like: String
       var comments: String
       var isLiked: Bool
       var isThereAStory: Bool
       var isBookmark: Bool
       
}

var posts = [
       Post(
              name: "East",
              icon: "icon",
              picture: "burger",
              description: "What a incredibly burger, perhaps one of the most succulet I ever tast in my life. I'm so greatfull to be enable to eat that !",
              like: "656",
              comments: "54",
              isLiked: true,
              isThereAStory: false,
              isBookmark: false
       ),
       
       Post(
              name: "Rudolp",
              icon: "icon2",
              picture: "sunset",
              description: "Isn't the sunset neat ?",
              like: "55550",
              comments: "789",
              isLiked: false,
              isThereAStory: false,
              isBookmark: false
       )
]
