//  File: Course.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

final class Course: Model, Content, @unchecked Sendable
{
    static let schema = "courses"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "instructor")
    var instructor: String
    
    @Field(key: "bio")
    var bio: String
    
    @Field(key: "avatarUrl")
    var avatarUrl: String
    
    @Field(key: "isBookmarked")
    var isBookmarked: Bool
    
    
    init() {}
    
    
    init(id: UUID? = nil, name: String, instructor: String, bio: String, avatarUrl: String, isBookmarked: Bool)
    {
        self.id = id
        self.name = name
        self.instructor = instructor
        self.bio = bio
        self.avatarUrl = avatarUrl
        self.isBookmarked = isBookmarked
    }
}
