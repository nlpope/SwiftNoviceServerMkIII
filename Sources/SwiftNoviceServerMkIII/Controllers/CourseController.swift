//  File: CourseController.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/6/25.

import Fluent
import Vapor

// STEP 3: THIS CONTROLLER HAS THE ABILITY TO READ ALL THE DIFFERENT COURSES VIA THE '.../courses' ROUTE
// BUT, VAPOR IS ONLY RUNNING THE API, NOT THE DATABASE IT DEPENDS ON, SO IN YOUR TERMINAL, GO IN THIS SERVER'S FILE > HIT 'CMD + T' > 'docker compose up db' (see docker-compose.yml file in this project) > BE SURE THE DOCKER DESKTOP APP IS OPEN OR IT WILL FAIL AGAIN
// ALL THIS IS DOING IS CREATING THE DATABASE FOR YOU WITHIN A DOCKER CONTAINER SO THE VAPOR API HAS SOMETHING TO SHOVE/PULL TO/FROM
// ONCE IT'S RUNNING, GO INTO POSTMAN TO CONFIRM THE ROUTES WORK (you can liken postman to the actual user facing app: postman(user-facing app || window into API) > Vapor SwiftNoviceServerMkIII API (server) > docker via terminal (database) > azure data studio (optional window into database))
#warning("one last possible error @ this point = 'the port/address is already in use'. if this happens, in terminal type 'lsof -i:8080' to reveal all the ports in use. Then type 'kill -9 [PID # revealed from last command]' just omit the brackets")
// NOW OPEN AZURE DATA STUDIO, this is just a window into our database that doesn't require an API
// in azure create a new connection > type postgresSQL > servername localhost (see configure file) > usrname & password = vapor_username & vapor_password (see configure file) > database = vapor_database (see configure file)

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
