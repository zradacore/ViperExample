//
//  ImageViewerInteractor.swift
//  Super easy dev
//
//  Created by affetta on 31.10.2022
//

import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemp() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
   
    
    weak var presenter: ImageViewerPresenterProtocol?
    let temperature : Int
    init(temp : Int) {
        self.temperature = temp
    }
    func getImageForCurrentTemp() -> UIImage? {
        if temperature < 0 {
            return UIImage(systemName: "snowflake")
        }else if temperature >= 0, temperature < 10{
            return UIImage(systemName: "cloud.fill")
            
        }else{
            return UIImage(systemName: "sun.mil.fill")
        }
    }
}
