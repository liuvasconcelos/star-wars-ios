//
//  InitialOptionContract.swift
//  star-wars-ios
//
//  Created by Stant 02 on 13/11/18.
//  Copyright © 2018 Liu Vasconcelos. All rights reserved.
//

import Foundation

protocol InitialOptionsPresenterContract {
    func loadAllby(category: String) -> [Any]
}

protocol InitialOptionsViewContract {
    
}
