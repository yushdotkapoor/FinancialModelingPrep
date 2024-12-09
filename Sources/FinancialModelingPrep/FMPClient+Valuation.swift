
//
//  FMPClient+Valuation.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 11/10/24.
//

import Foundation

public struct DiscountedCashFlow: Codable {
    public let symbol: String
    public let date: String
    public let dcf: Double
    public let stockPrice: Double
}

public struct AdvancedDiscountedCashFlow: Codable {
    public let symbol: String
    public let price: Double
    public let beta: Double
    public let finalTaxRate: Double
    public let totalDebt: Int64
    public let totalEquity: Int64
    public let totalCapital: Int64
    public let dilutedSharesOutstanding: Int64
    public let debtWeighting: Int
    public let equityWeighting: Int
    public let year: String
    public let period: String
    public let revenue: Int64
    public let ebitda: Int64
    public let operatingCashFlow: Int64
    public let ebit: Int64
    public let weightedAverageShsOutDil: Int64
    public let netDebt: Int64
    public let inventories: Int64
    public let receivables: Int64
    public let payable: Int64
    public let inventoriesChange: Int64
    public let receivablesChange: Int64
    public let payableChange: Int64
    public let capitalExpenditure: Int64
    public let previousRevenue: Int64
    public let revenuePercentage: Int
    public let taxRate: Double
    public let ebitdaPercentage: Double
    public let receivablesPercentage: Double
    public let inventoriesPercentage: Double
    public let payablePercentage: Double
    public let ebitPercentage: Double
    public let capitalExpenditurePercentage: Double
    public let operatingCashFlowPercentage: Double
    public let afterTaxCostOfDebt: Double
    public let marketRiskPremium: Double
    public let longTermGrowthRate: Int
    public let costOfEquity: Double
    public let wacc: Double
    public let taxRateCash: Int64
    public let ebiat: Int64
    public let ufcf: Int64
    public let riskFreeRate: Double
    public let sumPvUfcf: Int
    public let terminalValue: Int64
    public let presentTerminalValue: Int64
    public let enterpriseValue: Int64
    public let equityValue: Int64
    public let equityValuePerShare: Double
    public let freeCashFlowT1: Int64
    public let costofDebt: Double
    public let depreciation: Int64
    public let totalCash: Int64
    public let depreciationPercentage: Double
    public let totalCashPercentage: Double
}

public struct LeveredAdvancedDiscountedCashFlow: Decodable {
    public let year: Int
    public let symbol: String
    public let revenue: Int64
    public let revenuePercentage: Double
    public let capitalExpenditure: Int64
    public let capitalExpenditurePercentage: Double
    public let price: Double
    public let beta: Double
    public let dilutedSharesOutstanding: Int64
    public let costofDebt: Double
    public let taxRate: Double
    public let afterTaxCostOfDebt: Double
    public let riskFreeRate: Double
    public let marketRiskPremium: Double
    public let costOfEquity: Double
    public let totalDeb: Int64
    public let totalEquity: Int64
    public let totalCapital: Int64
    public let debtWeighting: Double
    public let equityWeighting: Double
    public let wacc: Double
    public let operatingCashFlow: Int64
    public let pvLfcf: Int64
    public let sumPvLfcf: Int
    public let longTermGrowthRate: Int
    public let freeCashFlow: Int64
    public let terminalValue: Int64
    public let presentTerminalValue: Int64
    public let enterpriseValue: Int64
    public let netDebt: Int64
    public let equityValue: Int64
    public let equityValuePerShare: Double
    public let freeCashFlowT1: Int64
    public let operatingCashFlowPercentage: Double
}

public struct CompanyRating: Codable {
    public let symbol: String
    public let date: Date
    public let rating: String
    public let ratingScore: Int
    public let ratingRecommendation: String
    public let ratingDetailsDCFScore: Int
    public let ratingDetailsDCFRecommendation: String
    public let ratingDetailsROEScore: Int
    public let ratingDetailsROERecommendation: String
    public let ratingDetailsROAScore: Int
    public let ratingDetailsROARecommendation: String
    public let ratingDetailsDEScore: Int
    public let ratingDetailsDERecommendation: String
    public let ratingDetailsPEScore: Int
    public let ratingDetailsPERecommendation: String
    public let ratingDetailsPBScore: Int
    public let ratingDetailsPBRecommendation: String
}

extension FMPClient {
    
    public func discountedCashFlow(symbol: String) async throws -> DiscountedCashFlow {
        let discountedCashFlow: [DiscountedCashFlow] = try await get("discounted-cash-flow/\(symbol)")
        return discountedCashFlow[0]
    }
    
    public func advancedDiscountedCashFlow(symbol: String) async throws -> AdvancedDiscountedCashFlow {
        let advancedDiscountedCashFlow: [AdvancedDiscountedCashFlow] = try await get("advanced_discounted_cash_flow", searchParams: ["symbol": symbol], version: "v4")
        return advancedDiscountedCashFlow[0]
    }
    
    public func leveredDiscountedCashFlow(symbol: String) async throws -> LeveredAdvancedDiscountedCashFlow {
        let advancedDiscountedCashFlow: [LeveredAdvancedDiscountedCashFlow] = try await get("advanced_levered_discounted_cash_flow", searchParams: ["symbol": symbol], version: "v4")
        return advancedDiscountedCashFlow[0]
    }
    
    public func companyRating(symbol: String) async throws -> CompanyRating {
        let companyRating: [CompanyRating] = try await get("rating/\(symbol)")
        return companyRating[0]
    }
    
    public func historicalCompanyRating(symbol: String, limit: Int? = nil) async throws -> [CompanyRating] {
        return try await get("historical-rating/\(symbol)", searchParams: [
            "limit": limit.map(String.init)
        ])
    }
}
