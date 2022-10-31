//
//  DateService.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import Foundation

class DateService{
    func getDate(completion: @escaping (Date) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            completion(Date())
        })
    }
}
