
//
//  FMPClient+MergersAndAcquisitions.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct MergersAndAcquisitions: Codable {
    public let companyName: String
    public let cik: String
    public let symbol: String
    public let targetedCompanyName: String
    public let targetedCik: String?
    public let targetedSymbol: String
    public let transactionDate: Date
    public let acceptanceTime: Date
    public let url: URL
}

extension FMPClient {
    
    public func mergersAndAcquisitionsRSSFeed(page: Int) async throws -> [MergersAndAcquisitions] {
        return try await get("mergers-acquisitions-rss-feed", searchParams: ["page": String(page)], version: "v4")
    }
    
    public func mergersAndAcquisitionsName(name: String) async throws -> [MergersAndAcquisitions] {
        return try await get("mergers-acquisitions/search", searchParams: ["symbol": name], version: "v4")
    }
}
