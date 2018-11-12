//
//  ViewUtils.swift
//  star-wars-ios
//
//  Created by Stant 02 on 12/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import Foundation

class ViewUtils {
    
    static func loadNibNamed<T>(_ nibName: String, owner: Any?) -> T {
        return Bundle.main.loadNibNamed(nibName, owner: owner, options: nil)?[0] as! T
    }
}
