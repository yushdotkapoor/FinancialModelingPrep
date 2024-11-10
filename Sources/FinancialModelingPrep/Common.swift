//
//  Common.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/11/24.
//

import Foundation

public struct EmptyResponse: Decodable {
    internal static let jsonData = try! JSONSerialization.data(withJSONObject: [:], options: [])
}

public enum RequestError: Error {
    case invalidURL
    case status(Int)
}

public struct MultiResponse<T>: Codable where T: Codable {
    public let status: Int
    public let body: T
}

//public enum SortDirection: String, Codable, CaseIterable {
//    case asc = "asc"
//    case desc = "desc"
//}

public protocol StringRepresentable: CustomStringConvertible, Hashable {
    init?(_ string: String)
}

extension Double: StringRepresentable {}

extension Float: StringRepresentable {}

extension Int: StringRepresentable {}

public struct NumericString<Value: StringRepresentable>: Codable, Hashable {
    public var value: Value

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)

        guard let value = Value(string) else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: """
                Failed to convert an instance of \(Value.self) from "\(string)"
                """
            )
        }

        self.value = value
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value.description)
    }
    
    init(value: Value) {
        self.value = value
    }
    
}