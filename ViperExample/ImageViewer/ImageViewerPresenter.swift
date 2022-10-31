//
//  ImageViewerPresenter.swift
//  Super easy dev
//
//  Created by affetta on 31.10.2022
//

import UIKit

protocol ImageViewerPresenterProtocol: AnyObject {
    func viewDidLoaded()
  
}

class ImageViewerPresenter {
    weak var view: ImageViewerViewProtocol?
    var router: ImageViewerRouterProtocol
    var interactor: ImageViewerInteractorProtocol

    init(interactor: ImageViewerInteractorProtocol, router: ImageViewerRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension ImageViewerPresenter: ImageViewerPresenterProtocol {
    func viewDidLoaded() {
        let image = interactor.getImageForCurrentTemp()
        view?.showImage(image: image)
    }
   
}
