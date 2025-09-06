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
    
    @Field(key: "name")
    var name: String
}
