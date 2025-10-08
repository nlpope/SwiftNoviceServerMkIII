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
    var item_index: Int
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "instructor")
    var instructor: String
    
    @Field(key: "bio")
    var bio: String
    
    @Field(key: "avatar_url")
    var avatar_url: String?
    
    @Field(key: "course_url")
    var course_url: String
    
    @Field(key: "course_projects_api_url")
    var course_projects_api_url: String
    
    @Field(key: "is_bookmarked")
    var is_bookmarked: Bool
    
    @Field(key: "is_completed")
    var is_completed: Bool
    
    
    init() {}
    
    
    init(itemIndex: Int, name: String, instructor: String, bio: String, avatarUrl: String, courseUrl: String, courseProjectsApiUrl: String, isBookmarked: Bool, isCompleted: Bool)
    {
        self.id = UUID()
        self.item_index = itemIndex
        self.name = name
        self.instructor = instructor
        self.bio = bio
        self.avatar_url = avatarUrl
        self.is_bookmarked = isBookmarked
        // course url only here to be carried over to 'go' btn in next VC
        self.course_url = courseUrl
        self.course_projects_api_url = courseProjectsApiUrl
        self.is_completed = isCompleted
    }
}
