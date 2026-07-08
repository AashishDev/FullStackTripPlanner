//
//  APIService.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 6/7/26.
//

import Foundation

protocol APIServiceProtocol {
    func execute(urlRequest: URLRequest) async throws -> (Data,HTTPURLResponse)
}

class APIService:APIServiceProtocol {
    let session: URLSession
    let timeout: TimeInterval
    
    init(session: URLSession, timeout: TimeInterval = TimeInterval(integerLiteral: 30)) {
        self.session = session
        self.timeout = timeout
    }
    
    func execute(urlRequest: URLRequest) async throws -> (Data,HTTPURLResponse) {
        let (data,response) = try await self.session.data(for: urlRequest)
        
        guard let httpResponse =  response as? HTTPURLResponse else {
         throw URLError(.badServerResponse)
        }
        
        return (data,httpResponse)
    }
}
