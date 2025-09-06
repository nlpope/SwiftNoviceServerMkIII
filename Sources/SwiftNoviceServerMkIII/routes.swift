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
    
    try app.register(collection: CourseController())
}
