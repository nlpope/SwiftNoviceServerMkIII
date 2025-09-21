//  File: Course.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

// Content type auto-conforms to Codable protocol
final class Course: Model, Content, @unchecked Sendable
{
    static let schema = "getCourses"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "item_index")
    var itemIndex: Int
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "instructor")
    var instructor: String
    
    @Field(key: "bio")
    var bio: String
    
    @Field(key: "avatar_url")
    var avatar_url: String?
    
    @Field(key: "is_bookmarked")
    var is_Bookmarked: Bool
    
    
    init() {}
    
    
    init(itemIndex: Int, name: String, instructor: String, bio: String, avatarUrl: String, isBookmarked: Bool)
    {
        self.id = UUID()
        self.itemIndex = itemIndex
        self.name = name
        self.instructor = instructor
        self.bio = bio
        self.avatar_url = avatarUrl
        self.is_Bookmarked = isBookmarked
    }
}
