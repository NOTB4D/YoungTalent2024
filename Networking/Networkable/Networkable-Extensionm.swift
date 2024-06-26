//
//  Networkable-Extensionm.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import Foundation


extension Networkable {
    func getRequest(
        queryItem: [String: String] = [:],
        path: String,
        httpMethod: RequestMethod = .get
    ) async -> URLRequest {
        var url = API.prepareUrl(withPath: path)
        url.append(queryItems: [.init(name: "api_key", value: "a9682a1bcb1c6843474a121144fd9071")])
        return prepareRequest(
            url: url,
            method: httpMethod,
            contentType: ContentType.json
        )
    }

    func getRequest<T: Decodable>(
        data: T,
        path: String,
        httpMethod: RequestMethod = .post
    ) async -> URLRequest {
        var url = API.prepareUrl(withPath: path)
        url.append(queryItems: [.init(name: "api_key", value: "a9682a1bcb1c6843474a121144fd9071")])
        // TODO: Add decodable
        return prepareRequest(
            url: url,
            method: httpMethod,
            contentType: ContentType.json
        )
    }

    private func prepareRequest(
        url: URL,
        method: RequestMethod,
        contentType: ContentType
    ) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.allHTTPHeaderFields = API.getHeader(contentType: contentType)
        return request
    }
}
