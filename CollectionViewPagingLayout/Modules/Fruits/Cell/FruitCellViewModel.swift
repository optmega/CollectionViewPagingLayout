//
//  FruitCellViewModel.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 12/23/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import Foundation
import UIKit

struct FruitCellViewModel {
    
    let fruit: Fruit
    let numberOfItems: Int
    let index: Int
    var quantity: Int = 0
    
    var cardBackgroundColor: UIColor {
        fruit.tintColor
    }
    
    var image: UIImage? {
        UIImage(named: fruit.imageName)
    }
}
