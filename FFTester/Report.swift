//
//  Report.swift
//  FFTester
//
//  Created by Matthew Elmore on 2/25/20.
//  Copyright © 2020 Matthew Elmore. All rights reserved.
//

import Foundation

// MARK: - Weather
struct Weather: Codable {
    let report: Report?
    
    enum CodingKeys: String, CodingKey {
        case report = "report"
    }
}

// MARK: - Report
struct Report: Codable {
    let conditions: Conditions?
//    let forecast: ReportForecast?
//    let windsAloft: ReportWindsAloft?
//    let mos: MOS?
    
    enum CodingKeys: String, CodingKey {
        case conditions = "conditions"
//        case forecast = "forecast"
//        case windsAloft = "windsAloft"
//        case mos = "mos"
    }
}

// MARK: - Conditions
struct Conditions: Codable {
    let text: String?
    let ident: String?
//    let dateIssued: Date?
//    let lat: Double?
//    let lon: Double?
//    let elevationFt: Int?
//    let tempC: Int?
//    let dewpointC: Int?
//    let pressureHg: Double?
//    let densityAltitudeFt: Int?
//    let relativeHumidity: Int?
//    let flightRules: String?
//    let cloudLayers: [CloudLayer]?
//    let cloudLayersV2: [CloudLayer]?
//    let weather: [String?]?
//    let visibility: ConditionsVisibility?
//    let wind: Wind?
    
    enum CodingKeys: String, CodingKey {
        case text = "text"
        case ident = "ident"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
//        case <#here#> = "<#here#>"
    }
}

// MARK: - CloudLayer
struct CloudLayer: Codable {
    let coverage: String?
    let altitudeFt: Int?
    let ceiling: Bool?
    let altitudeQualifier: Int?
}


// MARK: - ConditionsVisibility
struct ConditionsVisibility: Codable {
    let distanceSm: Double?
    let prevailingVisSm: Double?
}

// MARK: - Wind
struct Wind: Codable {
    let speedKts: Int?
    let gustSpeedKts: Int?
    let direction: Int?
    let from: Int?
    let variable: Bool?
}

// MARK: - ReportForecast
struct ReportForecast: Codable {
    let text: String?
    let ident: String?
    let dateIssued: Date?
    let period: Period?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let conditions: [PurpleCondition]?
}

// MARK: - PurpleCondition
struct PurpleCondition: Codable {
    let text: String?
    let dateIssued: Date?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let relativeHumidity: Int?
    let flightRules: String?
    let cloudLayers: [CloudLayer]?
    let cloudLayersV2: [CloudLayer]?
    let weather: [String]?
    let visibility: ConditionsVisibility?
    let wind: Wind?
    let period: Period?
}

// MARK: - Period
struct Period: Codable {
    let dateStart: Date?
    let dateEnd: Date?
}

// MARK: - MOS
struct MOS: Codable {
    let station: String?
    let issued: Date?
    let latitude: Double?
    let longitude: Double?
    let forecast: MOSForecast?
}

// MARK: - MOSForecast
struct MOSForecast: Codable {
    let text: String?
    let ident: String?
    let dateIssued: Date?
    let period: Period?
    let lat: Double?
    let lon: Double?
    let elevationFt: Int?
    let conditions: [FluffyCondition]?
}

// MARK: - FluffyCondition
struct FluffyCondition: Codable {
    let text: String?
    let tempMinC: Double?
    let tempMaxC: Double?
    let dewpointMinC: Double?
    let dewpointMaxC: Double?
    let flightRules: String?
    let cloudLayers: [CloudLayer]?
    let cloudLayersV2: [CloudLayer]?
    let weather: [String]?
    let visibility: PurpleVisibility?
    let wind: Wind?
    let period: Period?
    let turbulence: [String?]?
    let icing: [String?]?
}

// MARK: - PurpleVisibility
struct PurpleVisibility: Codable {
    let distanceSm: Double?
    let distanceQualifier: Int?
}

// MARK: - ReportWindsAloft
struct ReportWindsAloft: Codable {
    let lat: Double?
    let lon: Double?
    let dateIssued: Date?
    let windsAloft: [WindsAloftElement]?
    let source: String?
}

// MARK: - WindsAloftElement
struct WindsAloftElement: Codable {
    let validTime: Date?
    let period: Period?
    let windTemps: [String: WindTemp]?
}

// MARK: - WindTemp
struct WindTemp: Codable {
    let directionFromTrue: Int?
    let knots: Int?
    let celsius: Int?
    let altitude: Int?
    let isLightAndVariable: Bool?
    let isGreaterThan199Knots: Bool?
    let turbulence: Bool?
    let icing: Bool?
}
