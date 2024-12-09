
//
//  FMPClient+Dividends.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct DividendsCalendar: Codable {
    public let date: Date
    public let label: String
    public let adjDividend: Double
    public let symbol: String
    public let dividend: Double
    public let recordDate: Date
    public let paymentDate: Date
    public let declarationDate: Date
}

public struct DividendsHistorical: Codable {
    public let symbol: String
    public let historical: [DividendsCalendar]
}

extension FMPClient {
    
    public func dividendsCalendar(from: Date? = nil, to: Date? = nil) async throws -> [DividendsCalendar] {
        var searchParams: [String: String?] = [:]
        if let from {
            searchParams["from"] = Utils.iso8601DateOnlyFormatter.string(from: from)
        }
        if let to {
            searchParams["to"] = Utils.iso8601DateOnlyFormatter.string(from: to)
        }
        
        return try await get("stock_dividend_calendar", searchParams: searchParams)
    }
    
    public func historicalDividendsCalendar(symbol: String) async throws -> [UpgradeOrDowngrade] {
        return try await get("historical-price-full/stock_dividend/\(symbol)")
    }
}
