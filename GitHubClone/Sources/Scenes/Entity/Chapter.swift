//
//  Chapter.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

enum ChapterType {
    case repositories
    case starred
    case organizations
}

struct Chapter {
    let type: ChapterType
    let title: String
    let repositoriesCount: Int
}
