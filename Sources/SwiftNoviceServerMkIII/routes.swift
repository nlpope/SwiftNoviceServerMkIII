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
    
    app.get("hello",":name") { req async throws -> String in
        let name = try req.parameters.require("name")
        return "Hello, \(name.capitalized)!"
    }
    
    try app.register(collection: CourseController())
}
