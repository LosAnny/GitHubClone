//
//  ProfileModuleProtocols.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import UIKit

protocol ProfileModuleViewProtocol: AnyObject {
    
    var presenter: ProfileModulePresenterProtocol? { get set }
    
    // Presenter -> View
    func showProfile(with profile: Profile, _ chapters: [Chapter], and repositories: [Repository])
}

protocol ProfileModulePresenterProtocol: AnyObject {
    
    // View -> Presenter
    var interactor: ProfileModuleInputInteractorProtocol? { get set }
    var view: ProfileModuleViewProtocol? { get set }
    var router: ProfileModuleRouterProtocol? { get set }

    func viewDidLoad()
    func showChapter(with type: ChapterType, from view: UIViewController)
}

protocol ProfileModuleInputInteractorProtocol: AnyObject {
    
    var presenter: ProfileModuleOutputInteractorProtocol? { get set }
    
    // Presenter -> Interactor
    func getProfileModuleData()
}

protocol ProfileModuleOutputInteractorProtocol: AnyObject {
    
    // Interactor -> Presenter
    func takeProfileModuleData(with profile: Profile,
                               _ chapters: [Chapter],
                               and repositories: [Repository])
}

protocol ProfileModuleRouterProtocol: AnyObject {
    
    // Presenter -> Router
    static func createProfileModule(for view: ProfileModuleViewProtocol)
    func pushToChapter(with type: ChapterType, from view: UIViewController)
}
