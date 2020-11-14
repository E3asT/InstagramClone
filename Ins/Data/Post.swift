//
//  Post.swift
//  Ins
//
//  Created by Romain Beaujean on 12/11/2020.
//

import Foundation
import SwiftUI

struct Post: Identifiable, Hashable {
       let id = UUID()
       var name: String
       var icon: String
       var picture: String
       var description: String
       var like: Int
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
              like: 55,
              comments: "54",
              isLiked: true,
              isThereAStory: true,
              isBookmark: false
       ),
       
       Post(
              name: "Otis",
              icon: "icon2",
              picture: "sunset",
              description: "Isn't the sunset neat ?",
              like: 5550,
              comments: "789",
              isLiked: false,
              isThereAStory: false,
              isBookmark: false
       ),
       
       Post(
              name: "Odile",
              icon: "odile",
              picture: "brioche",
              description: "Miaouuuuum, miaou, miaouuuuuum 🤤🐈",
              like: 666,
              comments: "5",
              isLiked: true,
              isThereAStory: true,
              isBookmark: true
       ),
       
       Post(
              name: "Maeve",
              icon: "maeve",
              picture: "otisCouche",
              description: "It's the best chair where I could sleep !",
              like: 166,
              comments: "78",
              isLiked: false,
              isThereAStory: false,
              isBookmark: false
       ),
       
       Post(
              name: "Nizar",
              icon: "nizar",
              picture: "germes",
              description: "I'm a chef and sometimes you know the simplest is juste the best",
              like: 235,
              comments: "16",
              isLiked: true,
              isThereAStory: false,
              isBookmark: false
       ),
       
       Post(
              name: "Romain",
              icon: "moi",
              picture: "miami",
              description: "Best view of my trip in Miami",
              like: 25,
              comments: "2",
              isLiked: false,
              isThereAStory: true,
              isBookmark: false
       )
]
