//
//  WeatherDownloader.swift
//  FFTester
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

class WeatherDownloader {
    
    private var icao: String
//    private var delegate: WeatherDelegate?
    private var urlBase = "https://qa.foreflight.com/weather/report/"
    
    init(icao: String) {
        self.icao = icao
        getWeather(icao: self.icao)
    }
    
    private let session: URLSession = {
        return URLSession(configuration: .default)
    }()
    
    private func getWeather(icao: String) {
        if let url = URL(string: urlBase + self.icao) {
            print(url)
            let request = URLRequest(url: url)
            let task = self.session.dataTask(with: request) { (data, response, error) -> Void in
                if let data = data {
                    let decoder = JSONDecoder()
                    if let jsonReports = try? decoder.decode(Report.self, from: data) {
                        print(jsonReports)
                    }

                    print(data)
                } else if let error = error {
                    print("Error downloading the Weather \(error)")
                } else {
                    print("Unexpected error with request")
                }
            }
            task.resume()
        }
        
    }
    
}
