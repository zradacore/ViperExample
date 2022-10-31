//
//  ImageViewerViewController.swift
//  Super easy dev
//
//  Created by affetta on 31.10.2022
//

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    // MARK: - Public
    var presenter: ImageViewerPresenterProtocol?

    @IBOutlet weak var imageView: UIImageView!
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
        initialize()
    }
}

// MARK: - Private functions
private extension ImageViewerViewController {
    func initialize() {
    }
}

// MARK: - ImageViewerViewProtocol
extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
    
    
}
