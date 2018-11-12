//
//  InitialOptionsCell.swift
//  star-wars-ios
//
//  Created by Stant 02 on 12/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import UIKit

class InitialOptionsCell: UITableViewCell {
    public static let NIB_NAME   = "InitialOptionsCell"
    public static let IDENTIFIER = "InitialOptionsCellIdentifier"
    
    @IBOutlet weak var optionButton: UIButton!
    
    func configureView(option: String) {
        optionButton.setTitle(option, for: .normal)
    }
}
