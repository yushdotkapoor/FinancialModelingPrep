
//
//  FMPClient+Splits.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct SplitsHistorical: Decodable {
    public let symbol: String
    public let historical: [CompanySplit]
}

extension FMPClient {
    
    public func splitsCalendar(from: Date? = nil, to: Date? = nil) async throws -> [CompanySplit] {
        var searchParams: [String: String?] = [:]
        if let from {
            searchParams["from"] = Utils.iso8601DateOnlyFormatter.string(from: from)
        }
        if let to {
            searchParams["to"] = Utils.iso8601DateOnlyFormatter.string(from: to)
        }
        
        return try await get("stock_split_calendar", searchParams: searchParams)
    }
    
    public func historicalDividendsCalendar(symbol: String) async throws -> SplitsHistorical {
        return try await get("historical-price-full/stock_split/\(symbol)")
    }
}
