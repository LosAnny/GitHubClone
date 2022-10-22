//
//  ProfileModulePresenter.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

class ProfileModulePresenter: ProfileModulePresenterProtocol {
    
    var interactor: ProfileModuleInputInteractorProtocol?
    weak var view: ProfileModuleViewProtocol?
    var router: ProfileModuleRouterProtocol?
    
    func viewDidLoad() {
        interactor?.getProfileModuleData()
    }
}

extension ProfileModulePresenter: ProfileModuleOutputInteractorProtocol {
    
    func takeProfileModuleData(with profile: Profile, and chapters: [Chapter]) {
        view?.showProfile(with: profile, and: chapters)
    }
}
