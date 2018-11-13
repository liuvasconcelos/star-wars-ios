//
//  CategoryListCell.swift
//  star-wars-ios
//
//  Created by Stant 02 on 13/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import UIKit

class CategoryListCell: UITableViewCell {
    public static let NIB_NAME   = "CategoryListCell"
    public static let IDENTIFIER = "CategoryListCellIdentifier"
    
    @IBOutlet weak var elementLabel: UILabel!
    
    func configureView(element: Any = "") {
        
        elementLabel.text = element as? String
    }
    
}
