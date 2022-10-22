//
//  ProfileModuleInteractor.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

class ProfileModuleInteractor: ProfileModuleInputInteractorProtocol {
    
    weak var presenter: ProfileModuleOutputInteractorProtocol?
    
    func getProfileModuleData() {
        let profile = Common.getProfileInfo()
        let chapters = Common.getProfileChapters()
        
        presenter?.takeProfileModuleData(with: profile, and: chapters)
    }
}
