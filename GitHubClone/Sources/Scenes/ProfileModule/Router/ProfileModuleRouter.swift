//
//  ProfileModuleRouter.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

class ProfileModuleRouter: ProfileModuleRouterProtocol {
    
    static func createProfileModule(for view: ProfileModuleViewProtocol) {
        let presenter: ProfileModulePresenterProtocol & ProfileModuleOutputInteractorProtocol = ProfileModulePresenter()
        
        view.presenter = presenter
        view.presenter?.router = ProfileModuleRouter()
        view.presenter?.view = view
        view.presenter?.interactor = ProfileModuleInteractor()
        view.presenter?.interactor?.presenter = presenter
    }
}
