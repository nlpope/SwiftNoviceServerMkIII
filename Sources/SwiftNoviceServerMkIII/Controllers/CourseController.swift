//  File: CourseController.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

// STEP 3: THIS CONTROLLER HAS THE ABILITY TO READ ALL THE DIFFERENT COURSES VIA THE '.../courses' ROUTE
/**
 Steps & Analogies:
 1. turn on docker (database) via terminal
 > terminal > go to server file > 'cmd + t' for new tab > type 'docker compose up db' (see docker.yml file) > be sure the desktop app is open or this will fail
 > azure data studio (API-agnostic db window) is a window for this - open it & make a new connection w info from 'configure' file
 >> create a new connection > type postgresSQL > servername localhost (see configure file) > usrname & password = vapor_username & vapor_password (see configure file) > database = vapor_database (see configure file)
 
 2. turning on docker db (something for the localhost/url/port/server to pull from) allows you to turn on the main swift vapor (API/server) app
 > run the project
 
 3. open postman (window into API/server || stand in for user-facing app) to ensure vapor app/port/url is returning '200 OK' + any expected '/route' outputs
 */

#warning("one last possible error @ this point = 'the port/address is already in use'. if this happens, in terminal type 'lsof -i:8080' to reveal all the ports in use. Then type 'kill -9 [PID # revealed from last command]' just omit the brackets")

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
