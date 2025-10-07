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
    
    @Field(key: "course_url")
    var course_url: String
    
    @Field(key: "course_projects_api_url")
    var course_projects_api_url: String
    
    
    init() {}
    
    
    init(itemIndex: Int, name: String, instructor: String, bio: String, avatarUrl: String, isBookmarked: Bool, courseUrl: String, courseProjectsApiUrl: String)
    {
        self.id = UUID()
        self.itemIndex = itemIndex
        self.name = name
        self.instructor = instructor
        self.bio = bio
        self.avatar_url = avatarUrl
        self.is_Bookmarked = isBookmarked
        self.course_url = courseUrl
        self.course_projects_api_url = courseProjectsApiUrl
    }
}
