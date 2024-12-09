
//
//  FMPClient+UpgradesAndDowngrades.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct UpgradeOrDowngrade: Codable {
    public let symbol: String
    public let publishedDate: Date
    public let newsUR: URL
    public let newsTitle: String
    public let newsBaseURL: String
    public let newsPublisher: String
    public let newGrade: String
    public let previousGrade: String
    public let gradingCompany: String
    public let action: String
    public let priceWhenPosted: Double
}

public struct UpgradeOrDowngradeConsensus: Codable {
    public let symbol: String
    public let strongBuy: Int
    public let buy: Int
    public let hold: Int
    public let sell: Int
    public let strongSell: Int
    public let consensus: String
}

extension FMPClient {
    
    public func upgradesAndDowngrades(symbol: String) async throws -> [UpgradeOrDowngrade] {
        return try await get("upgrades-downgrades", searchParams: ["symbol": symbol], version: "v4")
    }
    
    public func upgradesAndDowngradesRSSFeed(page: Int) async throws -> [UpgradeOrDowngrade] {
        return try await get("upgrades-downgrades-rss-feed", searchParams: ["page": String(page)], version: "v4")
    }
    
    public func upgradesAndDowngradesConsensus(symbol: String) async throws -> [UpgradeOrDowngradeConsensus] {
        return try await get("upgrades-downgrades-consensus", searchParams: ["symbol": symbol], version: "v4")
    }
    
    public func upgradesAndDowngradesCompany(company: String) async throws -> [UpgradeOrDowngrade] {
        return try await get("upgrades-downgrades-grading-company", searchParams: ["company": company], version: "v4")
    }
}
