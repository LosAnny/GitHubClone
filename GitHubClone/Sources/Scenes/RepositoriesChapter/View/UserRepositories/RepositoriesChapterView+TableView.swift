//
//  RepositoriesChapterView+TableView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

extension RepositoriesChapterView {
    
    func setupTableView() {
        repositoriesTableView.dataSource = self
        repositoriesTableView.register(RepositoriesChapterCell.register(),
                                       forCellReuseIdentifier: RepositoriesChapterCell.identifier)
    }
}

extension RepositoriesChapterView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        repositoriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RepositoriesChapterCell.identifier,
                                                 for: indexPath) as? RepositoriesChapterCell else {
            return UITableViewCell()
        }
        
        let repository = repositoriesList[indexPath.row]
        cell.configureCell(with: repository)
        
        return cell
    }
}
