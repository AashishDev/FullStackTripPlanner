//
//  APIServiceProtocol.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//

import Foundation


struct HTTPResponse:Sendable {
    let data:Data
    let response:HTTPURLResponse
}

enum HTTPClientError: LocalizedError {
    case invalidResponse
    
    var errorDescription: String? {
        switch self {
        case .invalidResponse:
            return "The server returned an invalid response."
        }
    }
}

protocol HTTPClient:Sendable {
    func execute(_ request:URLRequest) async throws -> HTTPResponse
}

extension URLSession:HTTPClient {
    struct InvalidHTTPResponseError:Error {}
    
    func execute(_ request: URLRequest) async throws -> HTTPResponse {
        let (data,res) = try await data(for: request)
        guard let httpResponse = res as? HTTPURLResponse else {
            throw HTTPClientError.invalidResponse
        }
        
        return HTTPResponse(
            data: data,
            response: httpResponse)
    }
}
