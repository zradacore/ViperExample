//
//  WelcomeInteractor.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import Foundation

protocol WelcomeInteractorProtocol: AnyObject{
    func loadDate()
    func loadWeather()
    var temp : Int { get }
}

class WelcomeInteractor: WelcomeInteractorProtocol{
    
    var temp: Int = 0
    
    weak var presenter : WelcomePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather(completion: {[weak self] weather in
            self?.presenter?.didLoad(weather: weather)
            self?.temp = weather
        })
    }
}
