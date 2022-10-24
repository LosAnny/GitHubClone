//
//  StarredRepositoriesView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

class StarredRepositoriesView: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var repositoriesTableView: UITableView!
    
    // MARK: - Properties
    
    var presenter: RepositoriesChapterPresenterProtocol?
    var repositoriesList = [[Repository]?]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.viewDidLoad()
        setupView()
        setupTableView()
    }
    
    // MARK: - Setup
    
    func setupView() {
        title = "Starred Repositories"
        
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
}

// MARK: - Extensions

extension StarredRepositoriesView: RepositoriesChapterViewProtocol {
    
    func showRepositories(from repositories: [Repository]) {
        repositoriesList = [nil, repositories]
        repositoriesTableView.reloadData()
    }
}
