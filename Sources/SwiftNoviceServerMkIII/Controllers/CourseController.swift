//  File: CourseController.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

// STEP 3: THIS CONTROLLER HAS THE ABILITY TO READ ALL THE DIFFERENT COURSES VIA THE '.../courses' ROUTE
// BUT, VAPOR IS ONLY RUNNING THE API, NOT THE DATABASE IT DEPENDS ON, SO IN YOUR TERMINAL, GO IN THIS SERVER'S FILE > HIT 'CMD + T' > 'docker-compose up db' (see docker-compose.yml file in this project) > BE SURE THE DOCKER DESKTOP APP IS OPEN OR IT WILL FAIL AGAIN
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
