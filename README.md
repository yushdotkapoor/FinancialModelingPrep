# FinancialModelingPrep SDK for Swift

The **FinancialModelingPrep** SDK for Swift provides a seamless way to access financial data from the [Financial Modeling Prep API](https://financialmodelingprep.com/), which offers comprehensive information on global companies, stock exchanges, currencies, and more. With this SDK, developers can easily retrieve real-time and historical data for financial analysis or integration into their own applications.

## Features

- **Global Stock Exchange Data**: Retrieve detailed stock information from exchanges worldwide.
- **Company Financials**: Access company profiles, stock quotes, income statements, balance sheets, cash flow statements, and more.
- **Cryptocurrency and Forex**: Get data on major cryptocurrencies, as well as foreign exchange rates.
- **Economic Indicators**: Access various macroeconomic indicators and key financial ratios.
- **Real-time and Historical Data**: Query both current and historical data across different intervals.
- **Comprehensive Data on ETFs and Mutual Funds**: Obtain information on various ETFs and mutual funds, including historical performance.

## Requirements

- Swift 5.0+
- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+

## Installation

There are currently no releases for this SDK because the project is not finished. You will have to download the repository and add it to your Xcode library.

## Getting Started

### Setup

To use the Financial Modeling Prep API, sign up at [FinancialModelingPrep](https://financialmodelingprep.com/) and obtain your API key.

### Initialization

1. Import the SDK into your Swift file:

   ```swift
   import FinancialModelingPrep
   ```

2. Initialize the SDK with your API key:

   ```swift
   let client = FMPClient(apiKey: "YOUR_API_KEY")
   ```

## Current State

The current state of this library is in its early stages and is not complete. The Financial Modeling Prep API contains hundreds of endpoints and I am trying to add as many as I can. Feel free to add more if you see something missing!

## License

This SDK is available under the MIT license. See the [LICENSE](./LICENSE) file for more details.

## Contributing

We welcome contributions! Please see our [contribution guidelines](./CONTRIBUTING.md) for more information.
