//
//  Profile.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

struct Profile {
    let imageName: String
    let title: String
    let folowersCount: Int
    let folowingCount: Int
    let popularRepositories: [Repository]?
}
