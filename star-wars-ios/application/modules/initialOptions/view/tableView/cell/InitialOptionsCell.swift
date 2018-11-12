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
    
    @IBAction func clickOnButton(_ sender: Any) {
        guard let buttonTitle = optionButton.titleLabel?.text else {return}
        switch  buttonTitle {
        case "Films":
            print("filmes")
            break
        case "People":
            print("pessoas")
            break
        case "Planets":
            print("planetas")
            break
        case "Species":
            print("especies")
            break
        case "Starships":
            print("naves")
            break
        case "Vehicles":
            print("veiculos")
            break
        default:
            break
        }
    }
}

