//
//  GetMoviesResponse.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import Foundation

// MARK: - Result
public struct MovieResponse: Decodable {
    public let title: String?


    public init( title: String?) {
        self.title = title
    }
}
