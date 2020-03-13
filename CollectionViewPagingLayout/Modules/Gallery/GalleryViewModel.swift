//
//  GalleryViewModel.swift
//  CollectionViewPagingLayout
//
//  Created by Optmega on 12/27/19.
//  Copyright © 2019 Optmega. All rights reserved.
//

import Foundation

class GalleryViewModel {
    
    // MARK: Properties
    
    var itemViewModels: [PhotoCellViewModel] = []
    
    private let photos: [Photo] = [
        Photo(imageName: "galleryImage07", title: "Oksana", authorName: "Dmitry Simakovichr"),
        Photo(imageName: "galleryImage03", title: "Christmas", authorName: "Lukáš Kuda"),
        Photo(imageName: "galleryImage08", title: "Touch You", authorName: "Dmitry Simakovichr"),
        Photo(imageName: "galleryImage02", title: "Above the Fjord", authorName: "Wim Lassche"),
        Photo(imageName: "galleryImage01", title: "Milena", authorName: "Edith Laurent-Neuhauser"),
        Photo(imageName: "galleryImage05", title: "Portrait Anya", authorName: "Dmitry Simakovich"),
        Photo(imageName: "galleryImage04", title: "Almsee", authorName: "Michael Gruber"),
        Photo(imageName: "galleryImage06", title: "Piz Beverin", authorName: "Michael Mettier")
    ]
    
    
    // MARK: Lifecycle
    
    init() {
        itemViewModels = photos.map {
            PhotoCellViewModel(imageName: $0.imageName, title: $0.title, subtitle: "by " + $0.authorName)
        }
    }
}
