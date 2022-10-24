//
//  ProfileModuleView+CollectionView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

extension ProfileModuleView {
    
    func setupCollectionView() {
        repositoriesCollectionView.dataSource = self
        repositoriesCollectionView.delegate = self
        repositoriesCollectionView.register(PopularRepositoriesCell.register(),
                                            forCellWithReuseIdentifier: PopularRepositoriesCell.identifier)
    }
}

extension ProfileModuleView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: repositoriesCollectionView.frame.width - 80,
                      height: repositoriesCollectionView.frame.height)

    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return popularRepositories.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularRepositoriesCell",
                                                      for: indexPath as IndexPath) as! PopularRepositoriesCell
        let repository = popularRepositories[indexPath.row]
        cell.configureCell(with : repository,
                           name: profileTitle.text!,
                           and: profileImageView.image!)
        return cell
        }
}
