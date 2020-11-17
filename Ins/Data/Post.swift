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
       var image: String
       var description: String
       var like: Int
       var comments: String
       var isLiked: Bool
       var isThereAStory: Bool
       var isBookmark: Bool
       var storyImage: String
       
}

var posts = [
       Post(
              name: "East",
              icon: "icon",
              image: "burger",
              description: "What a incredibly burger, perhaps one of the most succulet I ever tast in my life. I'm so greatfull to be enable to eat that !",
              like: 55,
              comments: "54",
              isLiked: true,
              isThereAStory: true,
              isBookmark: false,
              storyImage: "story1"
       ),
       
       Post(
              name: "Otis",
              icon: "icon2",
              image: "sunset",
              description: "Isn't the sunset neat ?",
              like: 5550,
              comments: "789",
              isLiked: false,
              isThereAStory: false,
              isBookmark: false,
              storyImage: "story2"
       ),
       
       Post(
              name: "Odile",
              icon: "odile",
              image: "brioche",
              description: "Miaouuuuum, miaou, miaouuuuuum 🤤🐈",
              like: 666,
              comments: "5",
              isLiked: true,
              isThereAStory: true,
              isBookmark: true,
              storyImage: "story3"
       ),
       
       Post(
              name: "Maeve",
              icon: "maeve",
              image: "otisCouche",
              description: "It's the best chair where I could sleep !",
              like: 166,
              comments: "78",
              isLiked: false,
              isThereAStory: false,
              isBookmark: false,
              storyImage: "story4"
       ),
       
       Post(
              name: "Nizar",
              icon: "nizar",
              image: "germes",
              description: "I'm a chef and sometimes you know the simplest is juste the best",
              like: 235,
              comments: "16",
              isLiked: true,
              isThereAStory: false,
              isBookmark: false,
              storyImage: "story1"
       ),
       
       Post(
              name: "Romain",
              icon: "moi",
              image: "miami",
              description: "Best view of my trip in Miami",
              like: 25,
              comments: "2",
              isLiked: false,
              isThereAStory: true,
              isBookmark: false,
              storyImage: "story2"
       )
]
