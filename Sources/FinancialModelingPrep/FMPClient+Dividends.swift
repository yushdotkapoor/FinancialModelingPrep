
//
//  FMPClient+Dividends.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation


public struct DividendsHistorical: Codable {
    public let symbol: String
    public let historical: [Dividend]
}

extension FMPClient {
    
    public func dividendsCalendar(from: Date? = nil, to: Date? = nil) async throws -> [Dividend] {
        var searchParams: [String: String?] = [:]
        if let from {
            searchParams["from"] = Utils.iso8601DateOnlyFormatter.string(from: from)
        }
        if let to {
            searchParams["to"] = Utils.iso8601DateOnlyFormatter.string(from: to)
        }
        
        return try await get("stock_dividend_calendar", searchParams: searchParams)
    }
    
    public func historicalDividendsCalendar(symbol: String) async throws -> DividendsHistorical {
        return try await get("historical-price-full/stock_dividend/\(symbol)")
    }
}
