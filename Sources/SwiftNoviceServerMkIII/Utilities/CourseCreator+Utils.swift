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
        
        let gitr = createCourse(atIndex: 0, named: "Git Beginner", taughtBy: "Will Smythe", bio: BioKeys.git, avatarUrl: AvatarUrls.git, courseUrl: CourseUrls.git, courseProjectsApiUrl: CourseProjectsAPIUrls.git, isBookmarked: false, isCompleted: false)
        
        
        let playgrounds1 = createCourse(named: "Swift Playgrounds 1", taughtBy: "Self guided", atIndex: 2, url: CourseUrls.playgrounds1, avatarUrl: AvatarUrls.playgrounds1, bio: BioKeys.playgrounds1, courseProjectsApiUrl: "")
        
        let playgrounds2 = createCourse(named: "Swift Playgrounds 2", taughtBy: "Self guided", atIndex: 3, url: CourseUrls.playgrounds2, avatarUrl: AvatarUrls.playgrounds2, bio: BioKeys.playgrounds2, courseProjectsApiUrl: "")
        
        let seanAllenBeginner = createCourse(named: "Swift Beginner Course", taughtBy: "Sean Allen", atIndex: 4, url: CourseUrls.seanAllenBeginner, avatarUrl: AvatarUrls.seanAllenBeginner, bio: BioKeys.seanAllenBeginner, courseProjectsApiUrl: "")
        
        let seanAllenTakeHome = createCourse(named: "Dev Interview Prep - Take Home Project", taughtBy: "Sean Allen", atIndex: 5, url: CourseUrls.seanAllenTakeHome, avatarUrl: AvatarUrls.seanAllenTakeHome, bio: BioKeys.seanAllenTakeHome, courseProjectsApiUrl: "")
        
        let stanford = createCourse(named: "Stanford CS193P iOS course - Debugging and Xcode tips & tricks", taughtBy: "Jason Riggs", atIndex: 6, url: CourseUrls.stanford, avatarUrl: AvatarUrls.stanford, bio: BioKeys.stanford, courseProjectsApiUrl: "")
        
        let lynch = createCourse(named: "Mastering XCode", taughtBy: "Stewart Lynch", atIndex: 7, url: CourseUrls.lynch, avatarUrl: AvatarUrls.lynch, bio: BioKeys.lynch, courseProjectsApiUrl: "")
        
        let paul = createCourse(named: "HWS", taughtBy: "Paul Hudson", atIndex: 8, url: CourseUrls.paulHudson, avatarUrl: AvatarUrls.paulHudson, bio: BioKeys.paulHudson, courseProjectsApiUrl: "")
        
        courses += [git, playgrounds1, playgrounds2, seanAllenBeginner, seanAllenTakeHome, stanford, lynch, paul]
        
        return courses
    }
}
