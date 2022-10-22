//
//  ProfileModuleProtocols.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation

protocol ProfileModuleViewProtocol: AnyObject {
    
    var presenter: ProfileModulePresenterProtocol? { get set }
    
    // Presenter -> View
    func showProfile(with profile: Profile, and chapters: [Chapter])
}

protocol ProfileModulePresenterProtocol: AnyObject {
    
    // View -> Presenter
    var interactor: ProfileModuleInputInteractorProtocol? { get set }
    var view: ProfileModuleViewProtocol? { get set }
    var router: ProfileModuleRouterProtocol? { get set }

    func viewDidLoad()
    //func showFruitSelection(with fruit: Fruit, from view: UIViewController)
}

protocol ProfileModuleInputInteractorProtocol: AnyObject {
    
    var presenter: ProfileModuleOutputInteractorProtocol? { get set }
    
    // Presenter -> Interactor
    func getProfileModuleData()
}

protocol ProfileModuleOutputInteractorProtocol: AnyObject {
    
    // Interactor -> Presenter
    func takeProfileModuleData(with profile: Profile, and chapters: [Chapter])
}

protocol ProfileModuleRouterProtocol: AnyObject {
    
    // Presenter -> Router
    //func pushToChapterDetail(with type: ChapterType)
    static func createProfileModule(for view: ProfileModuleViewProtocol)
}
