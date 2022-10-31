//
//  ViewController.swift
//  ViperExample
//
//  Created by affetta on 31.10.2022.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject{
    func showDate(date : String)
    func showWeather(weather: String)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    var presenter : WelcomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
    }

    @IBAction func didTapImage(_ sender: Any) {
        presenter?.didTapImageButton()
    }
    
}
extension ViewController: WelcomeViewProtocol{
    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async {
            self.weatherLabel.text = weather
        }
      
    }
    
    
}
