//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Jonathan Ferrer on 3/22/20.
//  Copyright © 2020 jonathan ferrer. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
      }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      }


    init(fontSize : CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }


    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.90
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
      }


}
