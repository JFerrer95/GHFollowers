//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Jonathan Ferrer on 3/24/20.
//  Copyright © 2020 jonathan ferrer. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }


    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")

    }


    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}

