//
//  ProfileModuleRouter.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import UIKit

class ProfileModuleRouter: ProfileModuleRouterProtocol {
    
    static func createProfileModule(for view: ProfileModuleViewProtocol) {
        let presenter: ProfileModulePresenterProtocol & ProfileModuleOutputInteractorProtocol = ProfileModulePresenter()
        
        view.presenter = presenter
        view.presenter?.router = ProfileModuleRouter()
        view.presenter?.view = view
        view.presenter?.interactor = ProfileModuleInteractor()
        view.presenter?.interactor?.presenter = presenter
    }
    
    func pushToChapter(with type: ChapterType, from view: UIViewController) {
        
        var viewController = UIViewController()
        
        switch type {
        case .repositories:
            viewController = RepositoriesChapterView()
            view.navigationController?.pushViewController(viewController, animated: true)
            RepositoriesChapterRouter.createRepositoriesChapter(with: viewController as! RepositoriesChapterViewProtocol, and: type)
        case .starred:
            print("Starred in progress")
        case .organizations:
            print("Organizations in progress")
        }
    }
}
