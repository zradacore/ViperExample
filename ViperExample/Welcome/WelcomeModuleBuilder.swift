//
//  WelcomeModuleBuilder.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import UIKit

class WelcomeModuleBuilder{
    static func build() -> ViewController{
        let interactor = WelcomeInteractor()
        let router = WelcomeRouter()
        let presener = WelcomePresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
        viewController.presenter = presener
        presener.view = viewController
        interactor.presenter = presener
        router.viewController = viewController
        return viewController
        
    }
}
