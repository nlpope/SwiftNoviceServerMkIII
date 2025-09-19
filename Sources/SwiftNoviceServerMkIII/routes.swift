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
    
    app.get("getCourses") { req async -> [Course] in
        var courses = [Course]()
        
        courses += createCourse(named: "HWS", taughtBy: "Paul Hudson", atIndex: 1, url: "https://www.hackingwithswift.com/", imageUrl: "", bio: BioKeys.paulHudson)
        
        return courses
    }
    
    // END Swift's vapor docs
    
    try app.register(collection: CourseController())
}


func createCourse(named name: String, taughtBy instructor: String, atIndex index: Int, url: String, imageUrl: String, bio: String) -> Course
{
    return Course(id: UUID(), itemIndex: index, name: name, instructor: instructor, bio: bio, avatarUrl: imageUrl, isBookmarked: false)
}
