//
//  CategoryListTableView.swift
//  star-wars-ios
//
//  Created by Stant 02 on 13/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import UIKit

class CategoryListTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
  
    public static let NIB_NAME = "CategoryListTableView"
    
    var list = [Any]()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.delegate       = self
        self.dataSource     = self
        self.separatorStyle = .none
        
        let cell = UINib(nibName: CategoryListCell.NIB_NAME, bundle: nil)
        self.register(cell, forCellReuseIdentifier: CategoryListCell.IDENTIFIER)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryListCell.IDENTIFIER, for: indexPath as IndexPath) as! CategoryListCell
        cell.configureView(element: list[indexPath.row])
        cell.contentView.isUserInteractionEnabled = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.goToDetail(of: list[indexPath.row])
    }
    
    func set(list: [String]) {
        self.list = list
    }
    
    func goToDetail(of: Any) {
        print("Chegou aqui")
    }
    
}
