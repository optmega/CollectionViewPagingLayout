//
//  ViewModelBased.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 12/23/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import Foundation
import UIKit

protocol ViewModelBased {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { set get }
}


extension ViewModelBased where Self: UIViewController, Self: NibBased {

    // MARK: Static functions

    static func instantiate(viewModel: Self.ViewModelType) -> Self {
        var viewController = Self.init(nibName: self.nibName, bundle: Bundle(for: self))
        viewController.viewModel = viewModel
        return viewController
    }

}
