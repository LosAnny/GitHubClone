//
//  RepositoriesChapterRouter.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import UIKit

class RepositoriesChapterRouter: RepositoriesChapterRouterProtocol {
    
    static func createRepositoriesChapter(with view: RepositoriesChapterViewProtocol, and type: ChapterType) {
        let presenter: RepositoriesChapterPresenterProtocol & RepositoriesChapterOutputInteractorProtocol = RepositoriesChapterPresenter()
        presenter.repositoriesType = type
        
        view.presenter = presenter
        view.presenter?.interactor = RepositoriesChapterInteractor()
        view.presenter?.view = view
        view.presenter?.router = RepositoriesChapterRouter()
        view.presenter?.interactor?.presenter = presenter
    }
}
