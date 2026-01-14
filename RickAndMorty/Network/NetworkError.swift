//
//  NetworkError.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//

import Foundation

enum NetworkError: Error, CustomStringConvertible {
    case badRequest
    case badResponse
    case badURL
    case decoderError
}

extension NetworkError {
    var description: String {
        switch self {
        case .badRequest:
            return "Invalid request."
        case .badResponse:
            return "Server error."
        case .badURL:
            return "Invalid URL."
        case .decoderError:
            return "Decoding failed."
        }
    }
}
