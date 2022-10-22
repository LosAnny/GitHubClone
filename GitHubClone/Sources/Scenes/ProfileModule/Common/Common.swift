//
//  Common.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

class Common {
    
    static func getProfileInfo() -> Profile {
        let profile = Profile(imageName: "profileImage",
                              title: "LosAnny",
                              folowersCount: 8,
                              folowingCount: 12,
                              popularRepositories: nil)
        return profile
    }
    
    static func getRepositories() -> [Repository] {
        let repositories = [Repository(title: "GitHubClone",
                                       description: nil,
                                       starsCount: 0,
                                       language: "Swift"),
                            Repository(title: "AppleNotesApp",
                                       description: "This application is a clone of the default ios notes application.",
                                       starsCount: 0,
                                       language: "Swift"),
                            Repository(title: "KinopoiskApp",
                                       description: "The application is a clone of the popular movie search module of the Kinopoisk application.",
                                       starsCount: 0,
                                       language: "Swift"),
                            Repository(title: "AppleContactsApp",
                                       description: "This application is a clone of the default ios contacts application.",
                                       starsCount: 0,
                                       language: "Swift")]
        return repositories
    }
    
    static func getStarred() -> [Repository] {
        let repositories = [Repository(title: "The-Book-of-VIPER",
                                       description: "the one and the only",
                                       starsCount: 910,
                                       language: "Swift"),
                            Repository(title: "Pinterest-Application",
                                       description: "Build an application like Pinterest in Swift 4",
                                       starsCount: 32,
                                       language: "Swift"),
                            Repository(title: "SwiftFonts",
                                       description: "An app to list the available fonts on iOS, written in Swift using the MVVM pattern.",
                                       starsCount: 119,
                                       language: "Swift")]
        return repositories
    }
    
    static func getProfileChapters() -> [Chapter] {
        let chapters = [Chapter(type: .repositories,
                                title: "Repositories",
                                repositoriesCount: getRepositories().count),
                        Chapter(type: .starred,
                                title: "Starred",
                                repositoriesCount: getStarred().count),
                        Chapter(type: .organizations,
                                title: "Organizations",
                                repositoriesCount: 0)]
        return chapters
    }
}
