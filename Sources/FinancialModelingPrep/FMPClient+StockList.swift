//
//  FMPClient+StockList.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/12/24.
//

import Foundation

public struct SymbolInfo: Codable {
    public let symbol: String
    public let exchange: String?
    public let exchangeShortName: String?
    public let name: String?
    public let price: Double?
    public let type: String
}

public struct CommitmentOfTradersReportInfo: Codable {
    public let tradingSymbol: String
    public let shortName: String
}

public struct SymbolChangeInfo: Codable {
    public let date: Date
    public let name: String
    public let oldSymbol: String
    public let newSymbol: String
}

public struct ExchangeSymbolInfo: Codable {
    public let symbol: String
    public let name: String?
    public let price: Double?
    public let changesPercentage: Double?
    public let change: Double?
    public let dayLow: Double?
    public let dayHigh: Double?
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

extension FMPClient {
    
    public func stockList() async throws -> [SymbolInfo] {
        return try await get("stock/list")
    }
    
    public func etfList() async throws -> [SymbolInfo] {
        return try await get("etf/list")
    }
    
    public func symbolList() async throws -> [String] {
        return try await get("financial-statement-symbol-lists")
    }
    
    public func tradableList() async throws -> [SymbolInfo] {
        return try await get("available-traded/list")
    }
    
    public func commitmentOfTradersReportList() async throws -> [CommitmentOfTradersReportInfo] {
        return try await get("committment_of_traders_report/list", version: "v4")
    }
    
    public func cikList() async throws -> [CIKInfo] {
        return try await get("cik_list")
    }
    
    public func euronextSymbolsList() async throws -> [CompanyInfo] {
        return try await get("symbol/available-euronext")
    }
    
    public func symbolChanges() async throws -> [SymbolChangeInfo] {
        return try await get("symbol_change", version: "v4")
    }
    
    public func exchangeSymbols(for exchange: String) async throws -> [ExchangeSymbolInfo] {
        return try await get("symbol/\(exchange)")
    }
    
    public func availableIndexes() async throws -> [CompanyInfo] {
        return try await get("symbol/available-indexes")
    }
    
}
