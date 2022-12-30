//
//  IgData.swift
//  Instagram clone
//
//  Created by Peoplelink on 29/12/22.
//

import Foundation

struct userData{
    var userInfo : completeUserData
}

struct completeUserData{
    var posts : [userPost]
   var stories : [userStory]
    
}
struct userStory{
    var storyUserName : String
    var storyUserAvatar : String
    var storyViewed : Bool
}
struct userPost{
    var userName : String
    var userAvatar : String
    var userLoaction : String?
    var userPostId : Int
    var userPost : [String]
    var postLikes : Int
    var postComments : Int
    var postTime : String
    
}
