//
//  ResponseModel.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import Foundation

struct Response: Decodable, Hashable {
    let results: [ResponseModel]?
}

struct ResponseModel: Decodable, Hashable {
    let id: Int
    let name: String?
    let image: String?
    let species: String?
    let status: String?
    let origin: Origin?
    let type: String?
    let created: String?
    
    var formattedCreatedDate: String {
        guard let created, !created.isEmpty else { return "Unknown Date" }
        let iso = ISO8601DateFormatter()
        iso.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

        if let date = iso.date(from: created) {
            return date.formatted(date: .abbreviated, time: .omitted)
        }

        return "Unknown Date"
    }

    var imageURL: URL? {
            guard let image else { return nil }
            return URL(string: image)
        }
}

struct Origin: Decodable, Hashable {
    let name: String?
    let url: String?
}

