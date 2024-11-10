import XCTest
@testable import FinancialModelingPrep



final class FMPClientTests: XCTestCase {
    let client = FMPClient(apiKey: fmpkey)
    
    func testSearch() async throws {
        _ = try await client.search(query: "AAPL")
        _ = try await client.search(query: "BA")
        _ = try await client.search(query: "DECK")
    }
    
    func testTickerSearch() async throws {
        _ = try await client.tickerSearch(query: "AAPL")
        _ = try await client.tickerSearch(query: "BA")
        _ = try await client.tickerSearch(query: "DECK")
    }
    
    func testNameSearch() async throws {
        _ = try await client.nameSearch(query: "Apple Inc.")
    }
    
    func testCIKNameSearch() async throws {
        _ = try await client.cikNameSearch(companyName: "Berkshire")
        _ = try await client.cikNameSearch(companyName: "Amazon")
    }
    
    func testCIKSearch() async throws {
        _ = try await client.cikSearch(cik: "0001067983")
    }
    
    func testCusipSearch() async throws {
        _ = try await client.cusipSearch(cusip: "000360206")
    }
    
    func testISINSearch() async throws {
        _ = try await client.isinSearch(isin: "US0378331005")
    }
    
    func testStockList() async throws {
        _ = try await client.stockList()
    }
    
    func testETFList() async throws {
        _ = try await client.etfList()
    }
    
    func testSymbolList() async throws {
        _ = try await client.symbolList()
    }
    
    func testTradableList() async throws {
        _ = try await client.tradableList()
    }
    
    func testCommitmentOfTradersReportList() async throws {
        _ = try await client.commitmentOfTradersReportList()
    }
    
    func testCKIList() async throws {
        _ = try await client.cikList()
    }
    
    func testEuronextSymbolsList() async throws {
        _ = try await client.euronextSymbolsList()
    }
    
    func testSymbolChanges() async throws {
        _ = try await client.symbolChanges()
    }
    
    func testExchangeSymbols() async throws {
        _ = try await client.exchangeSymbols(for: "AMEX")
        _ = try await client.exchangeSymbols(for: "NYSE")
    }
    
    func testAvailableIndexes() async throws {
        _ = try await client.availableIndexes()
    }
    
    
}
