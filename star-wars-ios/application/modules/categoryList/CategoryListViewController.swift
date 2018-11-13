//
//  CategoryListViewController.swift
//  star-wars-ios
//
//  Created by Stant 02 on 13/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController {
    public static let NIB_NAME = "CategoryListViewController"
    
    @IBOutlet weak var categoryTableView: CategoryListTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let list: [String] = ["1", "2", "3", "4", "5", "6"]
        categoryTableView.set(list: list)
    }
}
