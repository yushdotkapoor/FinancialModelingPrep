//
//  FMPClientProtocol.swift
//  FinancialModelingPrep
//
//  Created by Yush Raj Kapoor on 10/11/24.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public typealias HTTPSearchParams = [String: String?]

public typealias HTTPBodyParams = [String: Any?]

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case options = "OPTIONS"
}

public protocol FMPClientProtocol {
    var apiKey: String! { get set }
    var baseURL: String { get set }
    var defaultVersion: String { get set }
    
    var timeoutInterval: TimeInterval { get }
}

// MARK: - Requests

extension FMPClientProtocol {
    
    public func get<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.get, urlPath: urlPath, searchParams: searchParams, version: version ?? defaultVersion)
    }
    
    public func delete<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.delete, urlPath: urlPath, searchParams: searchParams, version: version ?? defaultVersion)
    }
    
    public func delete(_ urlPath: String, searchParams: HTTPSearchParams? = nil, version: String? = nil) async throws -> Data {
        return try await request(.delete, urlPath: urlPath, searchParams: searchParams, version: version ?? defaultVersion)
    }
    
    public func post<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.post, urlPath: urlPath, searchParams: searchParams, version: version ?? defaultVersion)
    }
    
    public func post<T, V>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, body: V, version: String? = nil) async throws -> T where T: Decodable, V: Encodable {
        return try await request(.post, urlPath: urlPath, searchParams: searchParams, body: body, version: version ?? defaultVersion)
    }
    
    public func post<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, body: HTTPBodyParams, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.post, urlPath: urlPath, searchParams: searchParams, body: body, version: version ?? defaultVersion)
    }
    
    public func put<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.put, urlPath: urlPath, searchParams: searchParams, version: version ?? defaultVersion)
    }
    
    public func put<T, V>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, body: V, version: String? = nil) async throws -> T where T: Decodable, V: Encodable {
        return try await request(.put, urlPath: urlPath, searchParams: searchParams, body: body, version: version ?? defaultVersion)
    }
    
    public func put<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, body: HTTPBodyParams, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.put, urlPath: urlPath, searchParams: searchParams, body: body, version: version ?? defaultVersion)
    }
    
    public func patch<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.patch, urlPath: urlPath, searchParams: searchParams, version: version ?? defaultVersion)
    }
    
    public func patch<T, V>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, body: V, version: String? = nil) async throws -> T where T: Decodable, V: Encodable {
        return try await request(.patch, urlPath: urlPath, searchParams: searchParams, body: body, version: version ?? defaultVersion)
    }
    
    public func patch<T>(_ urlPath: String, searchParams: HTTPSearchParams? = nil, body: HTTPBodyParams, version: String? = nil) async throws -> T where T: Decodable {
        return try await request(.patch, urlPath: urlPath, searchParams: searchParams, body: body, version: version ?? defaultVersion)
    }
    
    public func request<T>(_ method: HTTPMethod, urlPath: String, searchParams: HTTPSearchParams? = nil, version: String) async throws -> T where T: Decodable {
        return try await request(method, urlPath: urlPath, searchParams: searchParams, httpBody: nil, version: version)
    }
    
    public func request<T, V>(_ method: HTTPMethod, urlPath: String, searchParams: HTTPSearchParams? = nil, body: V, version: String) async throws -> T where T: Decodable, V: Encodable {
        let data = try Utils.jsonEncoder.encode(body)
        return try await request(method, urlPath: urlPath, searchParams: searchParams, httpBody: data, version: version)
    }
    
    public func request<T>(_ method: HTTPMethod, urlPath: String, searchParams: HTTPSearchParams? = nil, body: HTTPBodyParams, version: String) async throws -> T where T: Decodable {
        let data = try JSONSerialization.data(withJSONObject: body.compactMapValues { $0 }, options: [])
        return try await request(method, urlPath: urlPath, searchParams: searchParams, httpBody: data, version: version)
    }
    
    private func request<T>(_ method: HTTPMethod, urlPath: String, searchParams: HTTPSearchParams? = nil, httpBody: Data? = nil, version: String) async throws -> T where T: Decodable {
        var data: Data = try await request(method, urlPath: urlPath, searchParams: searchParams, httpBody: httpBody, version: version)
//        let specialPaths = ["bars":"bars", "quotes":"quotes", "quote":"quote", "trades":"trades", "options/snapshots":"snapshots", "contracts": "option_contracts", "news": "news"]
//        for path in specialPaths {
//            if urlPath.contains(path.key) {
//                let json = JSON(data)
//                if json.contains(where: { $0.0 == path.value }) {
//                    do {
//                        data = try json[path.value].rawData()
//                    } catch {
//                        print(error)
//                    }
//                }
//            }
//        }
        
        if let error = try? Utils.jsonDecoder.decode(FMPError.self, from: data) {
            print(error)
            throw FMPErrorType.error(error)
        }
        
        do {
            return try Utils.jsonDecoder.decode(T.self, from: data)
        } catch {
//            print(JSON(data))
            print(urlPath)
            print(error)
            preconditionFailure()
        }
    }
    
    private func request(_ method: HTTPMethod, urlPath: String, searchParams: HTTPSearchParams? = nil, httpBody: Data? = nil, version: String) async throws -> Data {
        var searchParams = searchParams
        if searchParams != nil {
            searchParams?["apikey"] = apiKey
        } else {
            searchParams = ["apikey": apiKey]
        }
        
        let fullURL = "\(baseURL)/\(version)/\(urlPath)"
        
        var components = URLComponents(string: fullURL)
        components?.queryItems = searchParams?.compactMapValues { $0 }.map(URLQueryItem.init)
        
        guard let url = components?.url else {
            throw RequestError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("alpaca-swift/1.0", forHTTPHeaderField: "User-Agent")
        request.httpBody = httpBody
        request.timeoutInterval = timeoutInterval
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return data
    }
}
