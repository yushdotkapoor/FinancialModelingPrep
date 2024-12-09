//
//  FMPClient+.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/12/24.
//

import Foundation

public struct ExecutiveCompensation: Codable {
    public let cik: String
    public let symbol: String
    public let companyName: String
    public let industryTitle: String
    public let filingDate: String
    public let acceptedDate: Date
    public let nameAndPosition: String
    public let year: String
    public let salary: Double
    public let bonus: Double
    public let stockAward: Double
    public let optionAward: Double
    public let incentivePlanCompensation: Double
    public let allOtherCompensation: Double
    public let total: Double
    public let url: URL
}

public struct CompensationBenchmark: Codable {
    public let industryTitle: String
    public let year: String
    public let averageCompensation: Double
}

public struct CompanyNotes: Codable {
    public let cik: String
    public let symbol: String
    public let title: String
    public let exchange: String
}

public struct HistoricalEmployeeCount: Codable {
    public let cik: String
    public let symbol: String
    public let companyName: String
    public let acceptanceTime: Date
    public let periodOfReport: Date
    public let formType: String
    public let filingDate: Date
    public let employeeCount: Int
    public let source: URL
}

public struct StockScreenerInfo: Codable {
    public let symbol: String
    public let companyName: String
    public let marketCap: Double
    public let sector: String
    public let industry: String
    public let beta: Double
    public let price: Double
    public let lastAnnualDividend: Double
    public let volume: Double
    public let exchange: String
    public let exchangeShortName: String
    public let country: String
    public let isEtf: String
    public let isFund: String
    public let isActivelyTrading: String
}

public struct StockGrade: Codable {
    public let symbol: String
    public let date: Date
    public let gradingCompany: String
    public let previousGrade: String
    public let newGrade: String
}

public struct Executive: Codable {
    public let title: String
    public let name: String
    public let pay: Int?
    public let currencyPay: String
    public let gender: String
    public let yearBorn: String?
    public let titleSince: Date?
}

public struct CompanyCoreInformation: Codable {
    public let cik: String
    public let symbol: String
    public let exchange: String
    public let sicCode: String
    public let sicDescription: String
    public let stateLocation: String
    public let stateOfIncorporation: String
    public let fiscalYearEnd: String
    public let businessAddress: String
    public let mailingAddress: String
    public let taxIdentificationNumber: String
    public let registrantName: String
}

public struct MarketCap: Codable {
    public let symbol: String
    public let date: Date
    public let marketCap: Double
}

public struct AnalystEstimate: Codable {
    public let symbol: String
    public let date: Date
    public let estimatedRevenueLow: Int64
    public let estimatedRevenueHigh: Int64
    public let estimatedRevenueAvg: Int64
    public let estimatedEbitdaLow: Int64
    public let estimatedEbitdaHigh: Int64
    public let estimatedEbitdaAvg: Int64
    public let estimatedEbitLow: Int64
    public let estimatedEbitHigh: Int64
    public let estimatedEbitAvg: Int64
    public let estimatedNetIncomeLow: Int64
    public let estimatedNetIncomeHigh: Int64
    public let estimatedNetIncomeAvg: Int64
    public let estimatedSgaExpenseLow: Int64
    public let estimatedSgaExpenseHigh: Int64
    public let estimatedSgaExpenseAvg: Int64
    public let estimatedEpsAvg: Double
    public let estimatedEpsHigh: Double
    public let estimatedEpsLow: Double
    public let numberAnalystEstimatedRevenue: Int
    public let numberAnalystsEstimatedEps: Int
}

public struct AnalystRecommendation: Codable {
    public let symbol: String
    public let date: Date
    public let analystRatingsbuy: Int
    public let analystRatingsHold: Int
    public let analystRatingsSell: Int
    public let analystRatingsStrongSell: Int
    public let analystRatingsStrongBuy: Int
}

public struct CompanyMetrics: Codable {
    public let dividendYielTTM: Double
    public let volume: Int
    public let yearHigh: Double
    public let yearLow: Double
}

public struct CompanyRatio: Codable {
    public let dividendYielTTM: Double
    public let dividendYielPercentageTTM: Double
    public let peRatioTTM: Double
    public let pegRatioTTM: Double
    public let payoutRatioTTM: Double
    public let currentRatioTTM: Double
    public let quickRatioTTM: Double
    public let cashRatioTTM: Double
    public let daysOfSalesOutstandingTTM: Double
    public let daysOfInventoryOutstandingTTM: Double
    public let operatingCycleTTM: Double
    public let daysOfPayablesOutstandingTTM: Double
    public let cashConversionCycleTTM: Double
    public let grossProfitMarginTTM: Double
    public let operatingProfitMarginTTM: Double
    public let pretaxProfitMarginTTM: Double
    public let netProfitMarginTTM: Double
    public let effectiveTaxRateTTM: Double
    public let returnOnAssetsTTM: Double
    public let returnOnEquityTTM: Double
    public let returnOnCapitalEmployedTTM: Double
    public let netIncomePerEBTTTM: Double
    public let ebtPerEbitTTM: Double
    public let ebitPerRevenueTTM: Double
    public let debtRatioTTM: Double
    public let debtEquityRatioTTM: Double
    public let longTermDebtToCapitalizationTTM: Double
    public let totalDebtToCapitalizationTTM: Double
    public let interestCoverageTTM: Double
    public let cashFlowToDebtRatioTTM: Double
    public let companyEquityMultiplierTTM: Double
    public let receivablesTurnoverTTM: Double
    public let payablesTurnoverTTM: Double
    public let inventoryTurnoverTTM: Double
    public let fixedAssetTurnoverTTM: Double
    public let assetTurnoverTTM: Double
    public let operatingCashFlowPerShareTTM: Double
    public let freeCashFlowPerShareTTM: Double
    public let cashPerShareTTM: Double
    public let operatingCashFlowSalesRatioTTM: Double
    public let freeCashFlowOperatingCashFlowRatioTTM: Double
    public let cashFlowCoverageRatiosTTM: Double
    public let shortTermCoverageRatiosTTM: Double
    public let capitalExpenditureCoverageRatioTTM: Double
    public let dividendPaidAndCapexCoverageRatioTTM: Double
    public let priceBookValueRatioTTM: Double
    public let priceToBookRatioTTM: Double
    public let priceToSalesRatioTTM: Double
    public let priceEarningsRatioTTM: Double
    public let priceToFreeCashFlowsRatioTTM: Double
    public let priceToOperatingCashFlowsRatioTTM: Double
    public let priceCashFlowRatioTTM: Double
    public let priceEarningsToGrowthRatioTTM: Double
    public let priceSalesRatioTTM: Double
    public let enterpriseValueMultipleTTM: Double
    public let priceFairValueTTM: Double
    public let dividendPerShareTTM: Double
}

public struct CompanyInsideTrade: Codable {
    public let symbol: String
    public let filingDate: Date
    public let transactionDate: Date
    public let reportingCik: String
    public let transactionType: String
    public let securitiesOwned: Int
    public let companyCik: String
    public let reportingName: String
    public let typeOfOwner: String
    public let acquistionOrDisposition: String
    public let formType: String
    public let securitiesTransacted: Int
    public let price: Double
    public let securityName: String
    public let link: URL
}

public struct CompanySplit: Codable {
    public let date: Date
    public let label: String
    public let symbol: String?
    public let numerator: Int
    public let denominator: Int
}

public struct Dividend: Codable {
    public let date: Date
    public let label: String
    public let adjDividend: Double
    public let symbol: String?
    public let dividend: Double
    public let recordDate: Date
    public let paymentDate: Date
    public let declarationDate: Date
}

public struct News: Codable {
    public let symbol: String
    public let publishedDate: Date
    public let title: String
    public let image: URL
    public let site: URL
    public let text: String
    public let url: URL
}

public struct Rating: Codable {
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

public struct FinancialsIncome: Codable {
    public let date: Date
    public let symbol: String
    public let reportedCurrency: String
    public let cik: String
    public let fillingDate: Date
    public let acceptedDate: Date
    public let calendarYear: String
    public let period: String
    public let revenue: Int64
    public let costOfRevenue: Int64
    public let grossProfit: Int64
    public let grossProfitRatio: Double
    public let researchAndDevelopmentExpenses: Int64
    public let generalAndAdministrativeExpenses: Int64
    public let sellingAndMarketingExpenses: Int64
    public let sellingGeneralAndAdministrativeExpenses: Int64
    public let otherExpenses: Int64
    public let operatingExpenses: Int64
    public let costAndExpenses: Int64
    public let interestIncome: Int64
    public let interestExpense: Int64
    public let depreciationAndAmortization: Int64
    public let ebitda: Int64
    public let ebitdaratio: Double
    public let operatingIncome: Int64
    public let operatingIncomeRatio: Double
    public let totalOtherIncomeExpensesNet: Int64
    public let incomeBeforeTax: Int64
    public let incomeBeforeTaxRatio: Double
    public let incomeTaxExpense: Int64
    public let netIncome: Int64
    public let netIncomeRatio: Double
    public let eps: Double
    public let epsdiluted: Double
    public let weightedAverageShsOut: Int64
    public let weightedAverageShsOutDil: Int64
    public let link: URL
    public let finalLink: URL
}

public struct FinancialsBalance: Codable {
    public let date: Date
    public let symbol: String
    public let reportedCurrency: String
    public let cik: String
    public let fillingDate: Date
    public let acceptedDate: Date
    public let calendarYear: String
    public let period: String
    public let cashAndCashEquivalents: Int64
    public let shortTermInvestments: Int64
    public let cashAndShortTermInvestments: Int64
    public let netReceivables: Int64
    public let inventory: Int64
    public let otherCurrentAssets: Int64
    public let totalCurrentAssets: Int64
    public let propertyPlantEquipmentNet: Int64
    public let goodwill: Int64
    public let intangibleAssets: Int64
    public let goodwillAndIntangibleAssets: Int64
    public let longTermInvestments: Int64
    public let taxAssets: Int64
    public let otherNonCurrentAssets: Int64
    public let totalNonCurrentAssets: Int64
    public let otherAssets: Int64
    public let totalAssets: Int64
    public let accountPayables: Int64
    public let shortTermDebt: Int64
    public let taxPayables: Int64
    public let deferredRevenue: Int64
    public let otherCurrentLiabilities: Int64
    public let totalCurrentLiabilities: Int64
    public let longTermDebt: Int64
    public let deferredRevenueNonCurrent: Int64
    public let deferredTaxLiabilitiesNonCurrent: Int64
    public let otherNonCurrentLiabilities: Int64
    public let totalNonCurrentLiabilities: Int64
    public let otherLiabilities: Int64
    public let capitalLeaseObligations: Int64
    public let totalLiabilities: Int64
    public let preferredStock: Int64
    public let commonStock: Int64
    public let retainedEarnings: Int64
    public let accumulatedOtherComprehensiveIncomeLoss: Int64
    public let othertotalStockholdersEquity: Int64
    public let totalStockholdersEquity: Int64
    public let totalEquity: Int64
    public let totalLiabilitiesAndStockholdersEquity: Int64
    public let minorityInterest: Int64
    public let totalLiabilitiesAndTotalEquity: Int64
    public let totalInvestments: Int64
    public let totalDebt: Int64
    public let netDebt: Int64
    public let link: URL
    public let finalLink: URL
}

public struct FinancialsCash: Codable {
    public let date: Date
    public let symbol: String
    public let reportedCurrency: String
    public let cik: String
    public let fillingDate: Date
    public let acceptedDate: Date
    public let calendarYear: String
    public let period: String
    public let netIncome: Int64
    public let depreciationAndAmortization: Int64
    public let deferredIncomeTax: Int64
    public let stockBasedCompensation: Int64
    public let changeInWorkingCapital: Int64
    public let accountsReceivables: Int64
    public let inventory: Int64
    public let accountsPayables: Int64
    public let otherWorkingCapital: Int64
    public let otherNonCashItems: Int64
    public let netCashProvidedByOperatingActivities: Int64
    public let investmentsInPropertyPlantAndEquipment: Int64
    public let acquisitionsNet: Int64
    public let purchasesOfInvestments: Int64
    public let salesMaturitiesOfInvestments: Int64
    public let otherInvestingActivites: Int64
    public let netCashUsedForInvestingActivites: Int64
    public let debtRepayment: Int64
    public let commonStockIssued: Int64
    public let commonStockRepurchased: Int64
    public let dividendsPaid: Int64
    public let otherFinancingActivites: Int64
    public let netCashUsedProvidedByFinancingActivities: Int64
    public let effectOfForexChangesOnCash: Int64
    public let netChangeInCash: Int64
    public let cashAtEndOfPeriod: Int64
    public let cashAtBeginningOfPeriod: Int64
    public let operatingCashFlow: Int64
    public let capitalExpenditure: Int64
    public let freeCashFlow: Int64
    public let link: URL
    public let finalLink: URL
}

public struct Financials: Codable {
    public let income: [FinancialsIncome]
    public let balance: [FinancialsBalance]
    public let cash: [FinancialsCash]
}

public struct CompanyOutlook: Codable {
    public let profile: CompanyProfile
    public let metrics: CompanyMetrics
    public let ratios: [CompanyRatio]
    public let insideTrades: [CompanyInsideTrade]
    public let keyExecutives: [Executive]
    public let splitsHistory: [CompanySplit]
    public let stockSummary: [Dividend]
    public let stockNews: [News]
    public let rating: [Rating]
    public let financialsAnnual: [Financials]
    public let financialsQuarter: [Financials]
}

public struct StockPeers: Codable {
    public let symbol: String
    public let peersList: [String]
}

public struct StockMarketHours: Codable {
    public let openingHour: String
    public let closingHour: String
}

public struct StockMarketHoliday: Codable {
    let year: Int
    let holidays: [String: String] // Dynamic holiday names with date strings
    
    private enum CodingKeys: String, CodingKey {
        case year
    }
    
    // Custom decoding to handle dynamic keys for holidays
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        year = try container.decode(Int.self, forKey: .year)
        
        // Decode holidays by excluding known keys
        let holidayContainer = try decoder.container(keyedBy: AnyKey.self)
        holidays = try holidayContainer.allKeys.reduce(into: [String: String]()) { result, key in
            if key.stringValue != "year" {
                result[key.stringValue] = try holidayContainer.decode(String.self, forKey: key)
            }
        }
    }
}

struct AnyKey: CodingKey {
    var stringValue: String
    init(stringValue: String) { self.stringValue = stringValue }
    
    var intValue: Int? { return nil }
    init?(intValue: Int) { return nil }
}


public struct HolidaysAndTradingHours: Codable {
    public let stockExchangeName: String
    public let stockMarketHours: StockMarketHours
    public let stockMarketHolidays: [StockMarketHoliday]
    public let isTheStockMarketOpen: Bool
    public let isTheEuronextMarketOpen: Bool
    public let isTheForexMarketOpen: Bool
    public let isTheCryptoMarketOpen: Bool
}

public struct ExchangeTradingHours: Codable {
    public let name: String
    public let openingHour: String
    public let closingHour: String
    public let timezone: String
    public let isMarketOpen: Bool
}

public struct DelistedCompany: Codable {
    public let symbol: String
    public let companyName: String
    public let exchange: String
    public let ipoDate: Date
    public let delistedDate: Date
}

public struct SharesFloat: Codable {
    public let symbol: String
    public let freeFloat: Double
    public let floatShares: Int
    public let outstandingShares: Int
    public let source: URL?
    public let date: Date
}

extension FMPClient {
    
    public func companyProfile(symbol: String) async throws -> CompanyProfile {
        let cp: [CompanyProfile] = try await get("profile/\(symbol)")
        return cp[0]
    }
    
    public func executiveCompensation(symbol: String) async throws -> [ExecutiveCompensation] {
        return try await get("governance/executive_compensation", searchParams: [
            "symbol": symbol
        ], version: "v4")
    }
    
    public func compensationBenchmark(year: String) async throws -> [CompensationBenchmark] {
        return try await get("executive-compensation-benchmark", searchParams: [
            "year": year
        ], version: "v4")
    }
    
    public func companyNotes(symbol: String) async throws -> [CompanyNotes] {
        return try await get("company-notes", searchParams: [
            "symbol": symbol
        ], version: "v4")
    }
    
    public func historicalEmployeeCount(symbol: String) async throws -> [HistoricalEmployeeCount] {
        return try await get("historical/employee_count", searchParams: [
            "symbol": symbol,
        ], version: "v4")
    }
    
    public func employeeCount(symbol: String) async throws -> HistoricalEmployeeCount {
        let ec: [HistoricalEmployeeCount] = try await get("employee_count", searchParams: [
            "symbol": symbol,
        ], version: "v4")
        return ec[0]
    }
    
    public func stockScreener(marketCapMoreThan: Int? = nil, marketCapLessThan: Int? = nil, priceMoreThan: Double? = nil, priceLowerThan: Double? = nil, betaMoreThan: Double? = nil, betaLowerThan: Double? = nil, volumeMoreThan: Int?, volumeLowerThan: Int? = nil, dividendMoreThan: Double? = nil, dividendLowerThan: Double? = nil, isEtf: Bool? = nil, isFund: Bool? = nil, isActivelyTrading: Bool? = nil, sector: String? = nil, industry: String? = nil, country: String? = nil, exchange: String? = nil, limit: Int? = nil) async throws -> [StockScreenerInfo] {
        
        var searchParams: [String: String?] = [
            "marketCapMoreThan": marketCapMoreThan.map(String.init),
            "marketCapLessThan": marketCapLessThan.map(String.init),
            "priceMoreThan": priceMoreThan?.absoluteString(),
            "priceLowerThan": priceLowerThan?.absoluteString(),
            "betaMoreThan": betaMoreThan?.absoluteString(),
            "betaLowerThan": betaLowerThan?.absoluteString(),
            "volumeMoreThan": volumeMoreThan.map(String.init),
            "volumeLowerThan": volumeLowerThan.map(String.init),
            "dividendMoreThan": dividendMoreThan?.absoluteString(),
            "dividendLowerThan": dividendLowerThan?.absoluteString(),
            "sector": sector,
            "industry": industry,
            "country": country,
            "exchange": exchange,
            "limit": limit.map(String.init),
        ]
        if let isEtf = isEtf {
            searchParams["isEtf"] = String(isEtf)
        }
        if let isFund = isFund {
            searchParams["isFund"] = String(isFund)
        }
        if let isActivelyTrading = isActivelyTrading {
            searchParams["isActivelyTrading"] = String(isActivelyTrading)
        }
        return try await get("stock-screener", searchParams: searchParams)
    }
    
    public func stockGrade(symbol: String, limit: Int? = nil) async throws -> [StockGrade] {
        return try await get("grade/\(symbol)", searchParams: [
            "limit": limit.map(String.init)
        ])
    }
    
    public func executives(symbol: String) async throws -> [Executive] {
        return try await get("key-executives/\(symbol)")
    }
    
    public func companyCoreInformationSummary(symbol: String) async throws -> CompanyCoreInformation {
        let coreInfo: [CompanyCoreInformation] = try await get("company-core-information", searchParams: [
            "symbol": symbol
        ])
        return coreInfo[0]
    }
    
    public func marketCap(symbol: String) async throws -> MarketCap {
        let marketCap: [MarketCap] = try await get("market-capitalization/\(symbol)")
        return marketCap[0]
    }
    
    public func historicalMarketCap(symbol: String, from: Date? = nil, to: Date? = nil, limit: Int? = nil) async throws -> [MarketCap] {
        var searchParams: [String: String?] = [
            "limit": limit.map(String.init)
        ]
        if let from {
            searchParams["from"] = Utils.iso8601DateOnlyFormatter.string(from: from)
        }
        if let to {
            searchParams["to"] = Utils.iso8601DateOnlyFormatter.string(from: to)
        }
        
        return try await get("historical-market-capitalization/\(symbol)", searchParams: searchParams)
    }
    
    public func allCountries() async throws -> [String] {
        return try await get("get-all-countries")
    }
    
    public func analystEstimates(symbol: String, period: String? = nil, limit: Int? = nil) async throws -> [AnalystEstimate] {
        return try await get("analyst-estimates/\(symbol)", searchParams: [
            "period": period,
            "limit": limit.map(String.init)
        ])
    }
    
    public func analystStockRecommendations(symbol: String, period: String? = nil, limit: Int? = nil) async throws -> [AnalystRecommendation] {
        return try await get("analyst-stock-recommendations/\(symbol)")
    }
    
//    public func companyLogo(imgFileName: String) async throws -> [AnalystRecommendation] {
//        return try await get("/\(symbol)")
//    }
    
    public func companyOutlook(symbol: String) async throws -> [CompanyOutlook] {
        return try await get("company-outlook/\(symbol)", version: "v4")
    }
    
    public func stockPeers(symbol: String) async throws -> [StockPeers] {
        return try await get("stock_peers", searchParams: [
            "symbol": symbol
        ], version: "v4")
    }
    
    public func holidaysAndTradingHours(exchange: String) async throws -> HolidaysAndTradingHours {
        return try await get("is-the-market-open", searchParams: [
            "exchange": exchange
        ])
    }
    
    public func allExchangesTradingHours() async throws -> [ExchangeTradingHours] {
        return try await get("is-the-market-open-all")
    }
    
    public func delistedCompanies() async throws -> [DelistedCompany] {
        return try await get("delisted-companies")
    }
    
    public func sharesFloat(symbol: String) async throws -> SharesFloat {
        let shares: [SharesFloat] = try await get("shares_float", searchParams: [
            "symbol": symbol
        ], version: "v4")
        return shares[0]
    }
    
    public func historicalSharesFloat(symbol: String) async throws -> [SharesFloat] {
        return try await get("historical/shares_float", searchParams: [
            "symbol": symbol
        ], version: "v4")
    }
    
    public func allSharesFloat(symbol: String) async throws -> [SharesFloat] {
        return try await get("shares_float/all", searchParams: [
            "symbol": symbol
        ], version: "v4")
    }
    
    public func allAvailableSectors() async throws -> [String] {
        return try await get("sectors-list")
    }
    
    public func allAvailableIndustries() async throws -> [String] {
        return try await get("industries-list")
    }
    
    public func allAvailableExchanges() async throws -> [String] {
        return try await get("exchanges-list")
    }
    
}
