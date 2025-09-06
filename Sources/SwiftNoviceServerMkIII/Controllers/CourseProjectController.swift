//  File: CourseProjectController.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

struct CourseProjectController: RouteCollection
{
    func boot(routes: any Vapor.RoutesBuilder) throws
    {
        let courseProjects = routes.grouped("couresProjects")
        courseProjects.get(use: index)
    }
    
    
    func index(req: Request) throws -> EventLoopFuture<[CourseProject]>
    {
        return CourseProject.query(on: req.db).all()
    }
}
