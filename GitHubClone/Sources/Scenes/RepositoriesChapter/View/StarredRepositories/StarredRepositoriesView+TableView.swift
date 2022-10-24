//
//  StarredRepositoriesView+TableView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import Foundation
import UIKit

extension StarredRepositoriesView {
    
    func setupTableView() {
        repositoriesTableView.dataSource = self
        repositoriesTableView.register(StarredRepocitoriesCell.register(),
                                       forCellReuseIdentifier: StarredRepocitoriesCell.identifier)
        repositoriesTableView.register(MyListsCell.register(),
                                       forCellReuseIdentifier: MyListsCell.identifier)
    }
}

extension StarredRepositoriesView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return repositoriesList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "My Lists"
        case 1:
            return "Starred"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Lists are currently in Feature preview. Share feedback and report bugs."
        } else { return ""}
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        repositoriesList[section]?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: StarredRepocitoriesCell.identifier,
                                                     for: indexPath) as! StarredRepocitoriesCell
            let repository = (repositoriesList[indexPath.section]?[indexPath.row])!
            cell.configureCell(with: repository)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: MyListsCell.identifier,
                                                     for: indexPath) as! MyListsCell
            return cell
        }
    }
}
