//
//  RepositoriesChapterInteractor.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

class RepositoriesChapterInteractor: RepositoriesChapterInputInteractorProtocol {
    
    weak var presenter: RepositoriesChapterOutputInteractorProtocol?
    
    func getRepositories(with type: ChapterType) {
        
        var repositories = [Repository]()
        
        switch type {
        case .repositories:
            repositories = Common.getRepositories()
        case .starred:
            repositories = Common.getStarred()
        case .organizations:
            return
        }
        
        presenter?.takeRepositories(repositories)
    }
}
