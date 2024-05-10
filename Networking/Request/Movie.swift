//
//  Movie.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import Foundation

public extension API {
    enum Movie: Networkable {
        case getMovie
        case upComing

        public func request() async -> URLRequest {
            switch self {
            case .getMovie:
                await getRequest(path: "3/movie/top_rated")
            case .upComing:
                await getRequest(path: "3/movie/upcoming")
            }
        }
    }
}
