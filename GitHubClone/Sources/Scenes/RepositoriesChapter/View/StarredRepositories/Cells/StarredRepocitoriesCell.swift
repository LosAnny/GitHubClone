//
//  StarredRepocitoriesCell.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

class StarredRepocitoriesCell: UITableViewCell {
    
    // MARK: - Identifier
    
    static var identifier = "StarredRepocitoriesCell"

    // MARK: - Outlets

    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorName: UILabel!
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
        UINib(nibName: "StarredRepocitoriesCell", bundle: nil)
    }
    
    // MARK: - Configuration
    
    func configureCell(with repository: Repository) {
        authorName.text = repository.authorName ?? ""
        titleLabel.text = repository.title
        descriptionLabel.text = repository.description ?? ""
        starsCount.text = String(repository.starsCount)
        language.text = repository.language
        authorImage.tintColor = UIColor(red: .random(in: 0...1),
                                        green: .random(in: 0...1),
                                        blue: .random(in: 0...1),
                                        alpha: 1.0)
    }
}
