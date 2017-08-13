//
//  RoundButton.swift
//  Calculator
//
//  Created by test on 8/13/17.
//  Copyright © 2017 Meheboob Nadaf. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    override func awakeFromNib() {
        self.layer.cornerRadius = 15
        self.clipsToBounds = true
        super.awakeFromNib()
    }
}
