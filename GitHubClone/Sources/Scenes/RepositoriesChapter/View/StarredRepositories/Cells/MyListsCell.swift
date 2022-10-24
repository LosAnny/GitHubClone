//
//  MyListsCell.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 24.10.2022.
//

import UIKit

class MyListsCell: UITableViewCell {
    
    // MARK: - Identifier
    
    static var identifier = "MyListsCell"

    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Setup functions
    
    static func register() -> UINib {
        UINib(nibName: "MyListsCell", bundle: nil)
    }
}
