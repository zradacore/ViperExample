//
//  WeaterService.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import Foundation
class WeatherService{
    func getWeather(completion: @escaping (Int) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            let tepmerature = Int.random(in: -30...30)
            completion(tepmerature)
        })
    }
}
