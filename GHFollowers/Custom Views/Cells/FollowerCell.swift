//
//  FollowerCellCollectionViewCell.swift
//  GHFollowers
//
//  Created by jonathan ferrer on 3/21/20.
//  Copyright © 2020 jonathan ferrer. All rights reserved.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    let avitarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avitarImageView.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure() {
        addSubview(avitarImageView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avitarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avitarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avitarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: padding),
            avitarImageView.heightAnchor.constraint(equalTo: avitarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avitarImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
                                                   
            
            ])
        
    }
}
