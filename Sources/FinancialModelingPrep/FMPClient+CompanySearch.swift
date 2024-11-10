//
//  CompanySearch.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/11/24.
//

import Foundation

public struct CompanyInfo: Codable {
    public var symbol: String
    public var name: String
    public var currency: String?
    public var stockExchange: String?
    public var exchangeShortName: String?
}

public struct CIKInfo: Codable {
    public var cik: String
    public var name: String
}

public struct CusipInfo: Codable {
    public var company: String
    public var ticker: String
    public var cusip: String
}

public struct CompanyProfile: Codable {
    public var symbol: String
    public var price: Double
    public var beta: Double
    public var volAvg: Int64
    public var mktCap: Int64
    public var lastDiv: Double
    public var range: String
    public var changes: Double
    public var companyName: String
    public var currency: String
    public var cik: String?
    public var isin: String
    public var cusip: String?
    public var exchange: String
    public var exchangeShortName: String
    public var industry: String
    public var website: String
    public var description: String
    public var ceo: String
    public var sector: String
    public var country: String
    public var fullTimeEmployees: NumericString<Int>
    public var phone: String
    public var address: String
    public var city: String
    public var state: String
    public var zip: String
    public var dcfDiff: Double
    public var dcf: Double
    public var image: URL
    public var ipoDate: Date
    public var defaultImage: Bool
    public var isEtf: Bool
    public var isActivelyTrading: Bool
    public var isAdr: Bool
    public var isFund: Bool
}

extension FMPClient {
    
    public func search(query: String, limit: Int? = nil, exchange: String? = nil) async throws -> [CompanyInfo] {
        return try await get("search", searchParams: [
            "query": query,
            "limit": limit.map(String.init),
            "exchange": exchange
        ])
    }
    
    public func tickerSearch(query: String, limit: Int? = nil, exchange: String? = nil) async throws -> [CompanyInfo] {
        return try await get("search-ticker", searchParams: [
            "query": query,
            "limit": limit.map(String.init),
            "exchange": exchange
        ])
    }
    
    public func nameSearch(query: String, limit: Int? = nil, exchange: String? = nil) async throws -> [CompanyInfo] {
        return try await get("search-name", searchParams: [
            "query": query,
            "limit": limit.map(String.init),
            "exchange": exchange
        ])
    }
    
    public func cikNameSearch(companyName: String) async throws -> [CIKInfo] {
        return try await get("cik-search/\(companyName)")
    }
    
    public func cikSearch(cik: String) async throws -> [CIKInfo] {
        return try await get("cik/\(cik)")
    }
    
    public func cusipSearch(cusip: String) async throws -> [CusipInfo] {
        return try await get("cusip/\(cusip)")
    }
    
    public func isinSearch(isin: String) async throws -> [CompanyProfile] {
        return try await get("search/isin", searchParams: [
            "isin": isin,
        ], version: "v4")
    }
    
}
