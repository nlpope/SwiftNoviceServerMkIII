//  File: CourseController.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

struct CourseController: RouteCollection
{
    // this is like an init() func
    // it's the 1st thing to run
    func boot(routes: any Vapor.RoutesBuilder) throws
    {
        let courses = routes.grouped("courses")
        courses.get(use: index)
    }
    
    
    func index(req: Request) throws -> EventLoopFuture<[Course]>
    {
        return Course.query(on: req.db).all()
    }
}
