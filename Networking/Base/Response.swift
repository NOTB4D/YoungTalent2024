//
//  Response.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import Foundation

public struct Response<T: Decodable>: Decodable {
    public var results: T?
}
