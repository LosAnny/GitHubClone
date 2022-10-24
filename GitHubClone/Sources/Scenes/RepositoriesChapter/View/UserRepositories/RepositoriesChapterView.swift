//
//  RepositoriesChapterView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import UIKit

class RepositoriesChapterView: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var repositoriesTableView: UITableView!
    
    // MARK: - Properties
    
    var presenter: RepositoriesChapterPresenterProtocol?
    var repositoriesList = [Repository]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.viewDidLoad()
        setupView()
        setupTableView()
    }
    
    // MARK: - Setup
    
    func setupView() {
        title = "Repositories"
        
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
}

// MARK: - Extensions

extension RepositoriesChapterView: RepositoriesChapterViewProtocol {
    
    func showRepositories(from repositories: [Repository]) {
        repositoriesList = repositories
        repositoriesTableView.reloadData()
    }
}
