//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController,  UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        print("searchPressed", searchTextField.text!)
        searchTextField.endEditing(true) // dismisses keyboard
        // user pressec search icon / magnifying glass
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self // the text field should report back to the view controller // event listener for the searchTextField
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(searchTextField.text!)
        return true
        // user pressed return key
    }
    

    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something here"
            return false
        }
        //  should end comes right before the keyboard is dismissed
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        // Get the weather for the city.
        // If searchTextField.text is a value, assign it to city using if let, ensures the string optional is handled right
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        // unwrap the optional string and make it a string
            
            
        // triggered when any text field is done editing
        searchTextField.text = ""
        // only gets called when they keyboard is hidden, and so then we clear the text field
    }
    

}

