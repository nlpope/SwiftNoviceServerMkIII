//  File: CreateCourses.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

// fluent = object relational mapping framework
// used so migration can track diffs between database edits (CRUD)
import Fluent

// Migration is like Git, it just keeps track of table / database changes
struct CreateCourses: Migration
{
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void>
    {
        // this is a table called 'courses' with id, name, instructor, etc. props
        return database
            .schema("courses")
            .id()
            .field("item_index", .int, .required)
            .field("name", .string, .required)
            .field("instructor", .string, .required)
            .field("bio", .string, .required)
            .field("avatar_url", .string, .required)
            .field("is_bookmarked", .bool, .required)
            .create()
    }
    
    
    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void>
    {
        return database.schema("courses").delete()
    }
}
