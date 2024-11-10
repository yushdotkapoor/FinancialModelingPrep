//
//  FMPError.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/11/24.
//

import Foundation


public struct FMPError: Codable, Sendable {
    public let message: String
    public let code: Int?
}

public enum FMPErrorType: Error {
    case error(FMPError)
}
