//
//  CardCellViewModel.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 01/11/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import Foundation

struct CardCellViewModel: Equatable {
    
    let card: Card
    var imageName: String {
        card.imageName
    }
}
