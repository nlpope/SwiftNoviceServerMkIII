//  File: CourseCreator+Utils.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/20/25.

import Foundation

class CourseCreator
{
    func createCourse(named name: String, taughtBy instructor: String, atIndex index: Int, url: String, avatarUrl: String, bio: String) -> Course
    {
        return Course(itemIndex: index, name: name, instructor: instructor, bio: bio, avatarUrl: avatarUrl, isBookmarked: false)
    }
    
    
    func createCourses() -> [Course]
    {
        var courses = [Course]()
        let paul = createCourse(named: "HWS", taughtBy: "Paul Hudson", atIndex: 1, url: CourseUrls.paulHudson, avatarUrl: AvatarUrls.paulHudson, bio: BioKeys.paulHudson)
        
        let git = createCourse(named: "Git beginner", taughtBy: "Will Smythe", atIndex: 2, url: CourseUrls.paulHudson, avatarUrl: AvatarUrls.paulHudson, bio: BioKeys.paulHudson)
        
        courses += [paul]
        return courses
    }

}
