# FinancialModelingPrep SDK for Swift

The **FinancialModelingPrep SDK** for Swift provides a seamless way to access financial data from the [Financial Modeling Prep API](https://financialmodelingprep.com/), which offers comprehensive information on global companies, stock exchanges, currencies, and more. With this SDK, developers can easily retrieve real-time and historical data for financial analysis or integration into their own applications.

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

### Swift Package Manager

To integrate FinancialModelingPrep SDK into your Swift project, use [Swift Package Manager (SPM)](https://swift.org/package-manager/):

1. Go to your Xcode project settings.
2. Select the **Swift Packages** tab.
3. Click on the **+** button to add a new package.
4. Enter the URL for this repository: `https://github.com/yushdotkapoor/FinancialModelingPrep`.
5. Select the latest release and add the package to your project.

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

## License

This SDK is available under the MIT license. See the [LICENSE](./LICENSE) file for more details.

## Contributing

We welcome contributions! Please see our [contribution guidelines](./CONTRIBUTING.md) for more information.
