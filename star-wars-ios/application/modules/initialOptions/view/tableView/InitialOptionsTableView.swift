//
//  InitialOptionsTableView.swift
//  star-wars-ios
//
//  Created by Stant 02 on 12/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import UIKit

class InitialOptionsTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    public static let NIB_NAME = "InitialOptionsTableView"
    
    var options = [String]()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.delegate        = self
        self.dataSource      = self
        self.separatorStyle  = .none
        self.allowsSelection = false
        
        let cell = UINib(nibName: InitialOptionsCell.NIB_NAME, bundle: nil)
        self.register(cell, forCellReuseIdentifier: InitialOptionsCell.IDENTIFIER)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: InitialOptionsCell.IDENTIFIER, for: indexPath as IndexPath) as! InitialOptionsCell
        cell.configureView(option: options[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func set(options: [String]) {
        self.options = options
    }
    
}
