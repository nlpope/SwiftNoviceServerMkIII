import Foundation
import Fluent
import Vapor

// STEP 2: ROUTES FILE REGISTERS INSTANCE OF COURSECONTROLLER.SWIFT
func routes(_ app: Application) throws
{
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    // Swift's vapor docs
    
    app.get("hello",":name") { req async throws -> String in
        let name = try req.parameters.require("name")
        return "Hello, \(name.capitalized)!"
    }
    
    app.get("getCourses") { req async throws -> [Course] in
        var courses = [Course]()
        let courseCreator = CourseCreator()
        
        courses = courseCreator.createCourses()
        
        return courses
    }
    
    // END Swift's vapor docs
    
    try app.register(collection: CourseController())
}


