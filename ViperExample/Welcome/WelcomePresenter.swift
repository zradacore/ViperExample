//
//  WelcomePresenter.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject{
    func viewDidLoaded()
    func didLoad(date: String?)
    func didLoad(weather : Int?)
    func didTapImageButton()
}

class WelcomePresenter{
    weak var view: WelcomeViewProtocol?
    var router : WelcomeRouterProtocol
    var interactor : WelcomeInteractorProtocol
    
    init(interactor: WelcomeInteractorProtocol, router: WelcomeRouterProtocol){
        self.interactor = interactor
        self.router = router
    }
}
extension WelcomePresenter: WelcomePresenterProtocol{
    func didTapImageButton() {
        router.openImage(for: interactor.temp)
    }
    
 
    
    func viewDidLoaded() {
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date today")
    }
    
    func didLoad(weather: Int?) {
        let temp = weather?.description ?? "No temp"
        view?.showWeather(weather: temp)
    }
    
    
}
