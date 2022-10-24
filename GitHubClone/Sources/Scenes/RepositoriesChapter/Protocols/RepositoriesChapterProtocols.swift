//
//  RepositoriesChapterProtocols.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import Foundation
import UIKit

protocol RepositoriesChapterViewProtocol: AnyObject {
    
    var presenter: RepositoriesChapterPresenterProtocol? { get set }
    
    //Presenter -> View
    func showRepositories(from repositories: [Repository])
}

protocol RepositoriesChapterPresenterProtocol: AnyObject {
    
    // View -> Presenter
    var interactor: RepositoriesChapterInputInteractorProtocol? { get set }
    var view: RepositoriesChapterViewProtocol? { get set }
    var router: RepositoriesChapterRouterProtocol? { get set }
    var repositoriesType: ChapterType? { get set }

    func viewDidLoad()
}

protocol RepositoriesChapterInputInteractorProtocol: AnyObject {
    
    var presenter: RepositoriesChapterOutputInteractorProtocol? { get set }
    
    // Presenter -> Interactor
    func getRepositories(with type: ChapterType)
}

protocol RepositoriesChapterOutputInteractorProtocol: AnyObject {
    
    // Interactor -> Presenter
    func takeRepositories(_ repositories: [Repository])
}

protocol RepositoriesChapterRouterProtocol: AnyObject {
    
    static func createRepositoriesChapter(with view: RepositoriesChapterViewProtocol, and type: ChapterType)
}
