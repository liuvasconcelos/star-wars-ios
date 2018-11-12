//
//  InitialOptions.swift
//  star-wars-ios
//
//  Created by Stant 02 on 12/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import UIKit

class InitialOptionsViewController: UIViewController {
    public static let NIB_NAME = "InitialOptionsViewController"
    
    @IBOutlet weak var initialOptionTableView: InitialOptionsTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let options: [String] = ["Films", "People", "Planets", "Species", "Starships", "Vehicles"]
        initialOptionTableView.set(options: options)
    }
}
