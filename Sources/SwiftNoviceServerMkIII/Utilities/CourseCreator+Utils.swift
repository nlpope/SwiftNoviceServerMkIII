//  File: CourseCreator+Utils.swift
//  Project: SwiftNoviceServerMkIII
//  Created by: Noah Pope on 9/20/25.

import Foundation

class CourseCreator
{
    // NEW API CHAIN CODE - NO NEW IMPORTS NEEDED
    //... copy from snmkII's network fetcher n just give it scripts url
    // NEW API CHAIN CODE - NO NEW IMPORTS NEEDED
    #warning("left off here 10.07.25 - just order the rest of the createCourse to follow order in main app's Course model - func below is done just fix the return value & remaining error spots")
    func createCourse(atIndex index: Int, named name: String, taughtBy instructor: String, bio: String, avatarUrl: String, courseUrl: String, courseProjectsApiUrl: String, isBookmarked: Bool, isCompleted: Bool) -> Course
    {
        return Course(itemIndex: index, name: name, instructor: instructor, bio: bio, avatarUrl: avatarUrl, courseUrl: courseUrl, courseProjectsApiUrl: courseProjectsApiUrl, isBookmarked: isBookmarked, isCompleted: isCompleted)
    }
    
    
    func createCourses() -> [Course]
    {
        var courses = [Course]()
        
        let git = createCourse(atIndex: 0, named: "Git Beginner", taughtBy: "Will Smythe", bio: BioKeys.git, avatarUrl: AvatarUrls.git, courseUrl: CourseUrls.git, courseProjectsApiUrl: CourseProjectsAPIUrls.git, isBookmarked: false, isCompleted: false)
        
        let playgrounds1 = createCourse(atIndex: 1, named: "Swift Playgrounds 1", taughtBy: "Self guided", bio: BioKeys.playgrounds1, avatarUrl: AvatarUrls.playgrounds1, courseUrl: CourseUrls.playgrounds1, courseProjectsApiUrl: CourseProjectsAPIUrls.playgrounds1, isBookmarked: false, isCompleted: false)
        
        let playgrounds2 = createCourse(atIndex: 2, named: "Swift Playgrounds 2", taughtBy: "Self guided", bio: BioKeys.playgrounds2, avatarUrl: AvatarUrls.playgrounds2, courseUrl: CourseUrls.playgrounds2, courseProjectsApiUrl: CourseProjectsAPIUrls.playgrounds2, isBookmarked: false, isCompleted: false)
        
        let seanAllenBeginner = createCourse(atIndex: 3, named: "Swift Beginner Course", taughtBy: "Sean Allen", bio: BioKeys.seanAllenBeginner, avatarUrl: AvatarUrls.seanAllenBeginner, courseUrl: CourseUrls.seanAllenBeginner, courseProjectsApiUrl: CourseProjectsAPIUrls.seanAllenBeginner, isBookmarked: false, isCompleted: false)
        
        let seanAllenTakeHome = createCourse(atIndex: 4, named: "Dev Interview Prep - Take Home Project", taughtBy: "Sean Allen", bio: BioKeys.seanAllenTakeHome, avatarUrl: AvatarUrls.seanAllenTakeHome, courseUrl: CourseUrls.seanAllenTakeHome, courseProjectsApiUrl: CourseProjectsAPIUrls.seanAllenTakeHome, isBookmarked: false, isCompleted: false)
        
        let stanford = createCourse(atIndex: 5, named: "Stanford CS193P iOS course - Debugging and XCode Tips & Tricks", taughtBy: "Jason Riggs", bio: BioKeys.stanford, avatarUrl: AvatarUrls.stanford, courseUrl: CourseUrls.stanford, courseProjectsApiUrl: CourseProjectsAPIUrls.stanford, isBookmarked: false, isCompleted: false)
        
        let lynch = createCourse(atIndex: 6, named: "Mastering XCode", taughtBy: "Stewart Lynch", bio: BioKeys.lynch, avatarUrl: AvatarUrls.lynch, courseUrl: CourseUrls.lynch, courseProjectsApiUrl: CourseProjectsAPIUrls.lynch, isBookmarked: false, isCompleted: false)
        
        let paul = createCourse(atIndex: 6, named: "Hacking With Swift/iOS", taughtBy: "Paul Hudson", bio: BioKeys.paulHudson, avatarUrl: AvatarUrls.paulHudson, courseUrl: CourseUrls.paulHudson, courseProjectsApiUrl: CourseProjectsAPIUrls.paulHudson, isBookmarked: false, isCompleted: false)
        
        courses += [git, playgrounds1, playgrounds2, seanAllenBeginner, seanAllenTakeHome, stanford, lynch, paul]
        
        return courses
    }
}
