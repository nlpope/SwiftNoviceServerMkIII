//  File: CourseProject.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

final class CourseProject: Model, Content, @unchecked Sendable
{
    static let schema = "courseProjects"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "subtitle")
    var subtitle: String
    
    @Field(key: "skills")
    var skills: String
     
    @Field(key: "link")
    var link: String
    
    @Field(key: "isCompleted")
    var isCompleted: Bool
    
    
    init() {}
    
    
    init(id: UUID? = nil, title: String, subtitle: String, skills: String, link: String, isCompleted: Bool)
    {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.skills = skills
        self.link = link
        self.isCompleted = isCompleted
    }
}
