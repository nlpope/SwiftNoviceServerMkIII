//  File: CreateCourseProjects.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent

struct CreateCourseProjects: Migration
{
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void>
    {
        return database.schema("courseProjects")
            .id()
            .field("name", .string, .required)
            .field("subtitle", .string, .required)
            .field("skills", .string, .required)
            .field("link", .string, .required)
            .field("completed", .bool, .required)
            .create()
    }
    
    
    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void>
    {
        return database.schema("courseProjects").delete()
    }
}
