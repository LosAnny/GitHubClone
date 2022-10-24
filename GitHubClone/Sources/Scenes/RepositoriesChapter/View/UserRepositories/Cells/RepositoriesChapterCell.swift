//
//  RepositoriesChapterCell.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

class RepositoriesChapterCell: UITableViewCell {
    
    // MARK: - Identifier
    
    static var identifier = "RepositoriesChapterCell"

    // MARK: - Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var countStars: UILabel!
    @IBOutlet weak var language: UILabel!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Setup functions
    
    static func register() -> UINib {
        UINib(nibName: "RepositoriesChapterCell", bundle: nil)
    }
    
    // MARK: - Configuration

    func configureCell(with repository: Repository) {
        titleLabel.text = repository.title
        descriptionLabel.text = repository.description ?? ""
        countStars.text = String(repository.starsCount)
        language.text = repository.language
    }
}
