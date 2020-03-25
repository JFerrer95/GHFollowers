//
//  GFFollowerVC.swift
//  GHFollowers
//
//  Created by Jonathan Ferrer on 3/24/20.
//  Copyright © 2020 jonathan ferrer. All rights reserved.
//

import UIKit
import SafariServices

class GFFollowerItemVC: GFItemInfoVC {


    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }


    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Git Followers")

    }

    override func actionButtonTapped() {
        delegate.didTapFollower(for: user)
    }
}
