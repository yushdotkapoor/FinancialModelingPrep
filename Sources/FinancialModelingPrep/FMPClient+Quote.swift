
//
//  FMPClient+Quote.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct FullQuote: Codable {
    public let symbol: String
    public let name: String?
    public let price: Double?
    public let changesPercentage: Double?
    public let change: Double?
    public let dayLow: Double?
    public let dayHigh: Double?
    public let yearHigh: Double?
    public let yearLow: Double?
    public let marketCap: Int64
    public let priceAvg50: Double?
    public let priceAvg200: Double?
    public let exchange: String
    public let volume: Int64
    public let avgVolume: Int64?
    public let open: Double?
    public let previousClose: Double?
    public let eps: Double?
    public let pe: Double?
    public let earningsAnnouncement: Date?
    public let sharesOutstanding: Int64
    public let timestamp: Date
}

public struct ShortQuote: Codable {
    public let symbol: String
    public let price: Double
    public let volume: Int64
}

public struct OTCQuote: Codable {
    public let prevClose: Double
    public let high: Double
    public let low: Double
    public let open: Double
    public let volume: Double
    public let lastSalePrice: Double
    public let fmpLast: Double
    public let lastUpdated: Date
    public let symbol: String
}

public struct StockPriceChange: Codable {
    public let symbol: String
    public let oneDay: Double
    public let fiveDay: Double
    public let oneMonth: Double
    public let threeMonth: Double
    public let sixMonth: Double
    public let ytd: Double
    public let oneYear: Double
    public let threeYear: Double
    public let fiveYear: Double
    public let tenYear: Double
    public let max: Double

    private enum CodingKeys: String, CodingKey {
        case symbol
        case oneDay = "1D"
        case fiveDay = "5D"
        case oneMonth = "1M"
        case threeMonth = "3M"
        case sixMonth = "6M"
        case ytd
        case oneYear = "1Y"
        case threeYear = "3Y"
        case fiveYear = "5Y"
        case tenYear = "10Y"
        case max
    }
}

public struct AftermarketTrade: Codable {
    public let symbol: String
    public let price: Double
    public let size: Double
    public let timestamp: Int64
}

public struct AftermarketQuote: Codable {
    public let symbol: String
    public let ask: Double
    public let bid: Double
    public let asize: Double
    public let bsize: Double
    public let timestamp: Int64
}


extension FMPClient {
    
    public func fullQuote(symbol: String) async throws -> FullQuote {
        let fullQuote: [FullQuote] = try await get("quote/\(symbol)")
        return fullQuote[0]
    }
    
    public func quoteOrder(symbol: String) async throws -> FullQuote {
        let fullQuote: [FullQuote] = try await get("quote-order/\(symbol)")
        return fullQuote[0]
    }
    
    public func quote(symbol: String) async throws -> ShortQuote {
        let shortQuote: [ShortQuote] = try await get("quote-short/\(symbol)")
        return shortQuote[0]
    }
    
    public func otcQuote(symbol: String) async throws -> OTCQuote {
        let shortQuote: [OTCQuote] = try await get("otc/real-time-price/\(symbol)")
        return shortQuote[0]
    }
    
    public func exchangePrices(exchange: String) async throws -> [FullQuote] {
        return try await get("quotes/\(exchange)")
    }
    
    public func stockPriceChange(symbol: String) async throws -> StockPriceChange {
        let priceChange: [StockPriceChange] = try await get("stock-price-change/\(symbol)")
        return priceChange[0]
    }
    
    public func prePostMarketTrade(symbol: String) async throws -> AftermarketTrade {
        return try await get("pre-post-market-trade/\(symbol)", version: "v4")
    }
    
    public func prePostMarket(symbol: String) async throws -> AftermarketQuote {
        return try await get("pre-post-market/\(symbol)", version: "v4")
    }
    
    public func batchQuote(symbols: [String]) async throws -> [AftermarketQuote] {
        return try await get("batch-pre-post-market/\(symbols.joined(separator: ",")))", version: "v4")
    }
    
    public func batchQuote(symbol: [String]) async throws -> [AftermarketTrade] {
        return try await get("batch-pre-post-market-trade/\(symbol.joined(separator: ","))", version: "v4")
    }
    
    
    
}
