//
//  FruitsViewController.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 12/23/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import Foundation
import UIKit

class FruitsViewController: UIViewController, NibBased, ViewModelBased {
    
    // MARK: Properties
    
    var viewModel: FruitsViewModel!
    
    @IBOutlet private weak var backButton: UIButton!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    // MARK: Event listener
    
    @IBAction private func onBackTouched() {
        navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: Private functions
    
    private func configureViews() {
        view.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9529411765, alpha: 1)
        view.clipsToBounds = true
        configureCollectionView()
    }
    
    private func configureCollectionView() {
        collectionView.register(FruitsCollectionViewCell.self)
        collectionView.isPagingEnabled = true
        collectionView.dataSource = self
        let layout = CollectionViewPagingLayout()
        layout.numberOfVisibleItems = 6
        collectionView.collectionViewLayout = layout
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.clipsToBounds = false
        collectionView.backgroundColor = .clear
    }
    
}

extension FruitsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.itemViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemViewModel = viewModel.itemViewModels[indexPath.row]
        let cell: FruitsCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        cell.viewModel = itemViewModel
        return cell
    }

}
