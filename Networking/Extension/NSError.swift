//
//  NSError.swift
//  YoungTalentNetworking
//
//  Created by Eser Kucuker on 10.05.2024.
//

import Foundation

public extension NSError {
    static var generic: Error {
        NSError(domain: "", code: -1, userInfo: [:] )
    }

    static func genericError(message: String) -> NSError {
        NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: message])
    }
}

