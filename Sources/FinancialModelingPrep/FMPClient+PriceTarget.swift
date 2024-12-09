
//
//  FMPClient+PriceTag.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct PriceTarget: Codable {
    public let symbol: String
    public let publishedDate: Date
    public let newsURL: URL
    public let newsTitle: String
    public let analystName: String
    public let priceTarget: Double
    public let adjPriceTarget: Double
    public let priceWhenPosted: Double
    public let newsPublisher: String
    public let newsBaseURL: String
    public let analystCompany: String
}

public struct PriceTargetSummary: Codable {
    public let symbol: String
    public let lastMonth: Int
    public let lastMonthAvgPriceTarget: Double
    public let lastQuarter: Int
    public let lastQuarterAvgPriceTarget: Double
    public let lastYear: Int
    public let lastYearAvgPriceTarget: Double
    public let allTime: Int
    public let allTimeAvgPriceTarget: Double
    public let publishers: [String]
}

public struct PriceTargetByName: Codable {
    public let symbol: String
    public let publishedDate: Date
    public let newsURL: URL
    public let newsTitle: String
    public let analystName: String
    public let priceTarget: Double
    public let adjPriceTarget: Double
    public let priceWhenPosted: Double
    public let newsPublisher: String
    public let newsBaseURL: String
    public let analystCompany: String
}

public struct PriceTargetConsensus: Codable {
    public let symbol: String
    public let targetHigh: Double
    public let targetLow: Double
    public let targetConsensus: Double
    public let targetMedian: Double
}

extension FMPClient {
    
    public func priceTarget(symbol: String) async throws -> [PriceTarget] {
        return try await get("price-target", searchParams: ["symbol": symbol], version: "v4")
    }
    
    public func priceTargetSummary(symbol: String) async throws -> [PriceTargetSummary] {
        return try await get("price-target-summary", searchParams: ["symbol": symbol], version: "v4")
    }
    
    public func priceTargetAnalyst(analyst: String) async throws -> [PriceTargetByName] {
        return try await get("price-target-analyst-name", searchParams: ["name": analyst], version: "v4")
    }
    
    public func priceTargetCompanyName(companyName: String) async throws -> [PriceTargetByName] {
        return try await get("price-target-analyst-company", searchParams: ["company": companyName], version: "v4")
    }
    
    public func priceTargetConsensus(symbol: String) async throws -> PriceTargetConsensus {
        let priceTargetConsensus: [PriceTargetConsensus] = try await get("price-target-consensus", searchParams: ["symbol": symbol], version: "v4")
        return priceTargetConsensus[0]
    }
    
    public func priceTargetRSSFeed(page: Int) async throws -> [PriceTargetByName] {
        return try await get("price-target-rss-feed", searchParams: ["page": String(page)], version: "v4")
    }
}
