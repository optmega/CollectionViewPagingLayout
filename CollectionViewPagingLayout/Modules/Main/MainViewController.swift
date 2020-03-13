//
//  MainViewController.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 12/26/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, NibBased {

    
    // MARK: Event listeners
    
    @IBAction private func fruitsButtonTouched() {
        navigationController?.pushViewController(
            FruitsViewController.instantiate(viewModel: FruitsViewModel()),
            animated: true
        )
    }
    
    @IBAction private func galleryButtonTouched() {
        navigationController?.pushViewController(
            GalleryViewController.instantiate(viewModel: GalleryViewModel()),
            animated: true
        )
    }
    
    @IBAction private func cardsButtonTouched() {
        navigationController?.pushViewController(
            CardsViewController.instantiate(viewModel: CardsViewModel()),
            animated: true
        )
    }
    
}
