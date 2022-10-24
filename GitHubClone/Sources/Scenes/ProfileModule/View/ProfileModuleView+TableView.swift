//
//  ProfileModuleView+TableView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import UIKit

extension ProfileModuleView {
    
    func setupTableView() {
        chaptersTableView.dataSource = self
        chaptersTableView.delegate = self
    }
}

extension ProfileModuleView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        chaptersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chaptersTableView.dequeueReusableCell(withIdentifier: "ProfileChapter", for: indexPath)
        let chapter = chaptersList[indexPath.row]
        cell.imageView?.image = UIImage(named: chapter.title)
        cell.textLabel?.text = chapter.title
        cell.detailTextLabel?.text = String(chapter.repositoriesCount)
        cell.selectionStyle = .none
        
        return cell
    }
}

extension ProfileModuleView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (chaptersTableView.frame.height - tableView.sectionFooterHeight - tableView.sectionHeaderHeight) / CGFloat(chaptersList.count)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let typeSelectChapter = chaptersList[indexPath.row].type
        presenter?.showChapter(with: typeSelectChapter, from: self)
    }
}
