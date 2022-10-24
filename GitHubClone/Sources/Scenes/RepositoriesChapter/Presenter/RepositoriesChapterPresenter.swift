//
//  RepositoriesChapterPresenter.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

class RepositoriesChapterPresenter: RepositoriesChapterPresenterProtocol {
    
    var interactor: RepositoriesChapterInputInteractorProtocol?
    weak var view: RepositoriesChapterViewProtocol?
    var router: RepositoriesChapterRouterProtocol?
    var repositoriesType: ChapterType?
    
    func viewDidLoad() {
        interactor?.getRepositories(with: repositoriesType ?? .repositories)
    }
}

extension RepositoriesChapterPresenter: RepositoriesChapterOutputInteractorProtocol {
    
    func takeRepositories(_ repositories: [Repository]) {
        view?.showRepositories(from: repositories)
    }
}
