//
//  ProfileModuleView.swift
//  GitHubClone
//
//  Created by Анна Лошакова on 22.10.2022.
//

import UIKit

class ProfileModuleView: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var chaptersTableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileTitle: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    
    // MARK: - Properties
    
    var presenter: ProfileModulePresenterProtocol?
    var chaptersList = [Chapter]()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        ProfileModuleRouter.createProfileModule(for: self)
        presenter?.viewDidLoad()
        setupTableView()
    }
}

extension ProfileModuleView: ProfileModuleViewProtocol {
    
    func showProfile(with profile: Profile, and chapters: [Chapter]) {
        chaptersList = chapters
        
        profileImageView.image = UIImage(named: profile.imageName)
        profileTitle.text = profile.title
        followersCount.text = String(profile.folowersCount)
        followingCount.text = String(profile.folowingCount)
        
        navigationController?.navigationBar.topItem?.title = profile.title
    }
}
