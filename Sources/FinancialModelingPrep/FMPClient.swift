//
//  FMPClient.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/11/24.
//

import Foundation


public class FMPClient: FMPClientProtocol {
    
    public var baseURL = "https://financialmodelingprep.com/api"
    public var defaultVersion: String = "v3"
    public var apiKey: String!
    
    public let timeoutInterval: TimeInterval
    
    init(apiKey: String, timeoutInterval: TimeInterval = 10) {
        self.apiKey = apiKey
        self.timeoutInterval = timeoutInterval
    }
}


public extension Double {
    func absoluteString() -> String {
        return NSDecimalNumber(decimal: Decimal(self)).stringValue
    }
}
