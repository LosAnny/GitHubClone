//
//  PopularRepositoriesCell.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

class PopularRepositoriesCell: UICollectionViewCell {
    
    // MARK: - Identifier
    
    static let identifier = "PopularRepositoriesCell"

    // MARK: - Outlets
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starsCount: UILabel!
    @IBOutlet weak var language: UILabel!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Setup functions
    
    static func register() -> UINib {
        UINib(nibName: "PopularRepositoriesCell", bundle: nil)
    }
    
    // MARK: - Configuration

    func configureCell(with repository: Repository, name: String, and image: UIImage) {
        profileImage.image = image
        profileName.text = name
        titleLabel.text = repository.title
        descriptionLabel.text = repository.description
        starsCount.text = String(repository.starsCount)
        language.text = repository.language
    }
}
