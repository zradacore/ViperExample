//
//  WelcomeRouter.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject{
    func openImage(for temp: Int)
}

class WelcomeRouter: WelcomeRouterProtocol{
  
    weak var viewController: ViewController?
    
    func openImage(for temp: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temp)
        viewController?.present(vc, animated: true)
    }
    
    
}
