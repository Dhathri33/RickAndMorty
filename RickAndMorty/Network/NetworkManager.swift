//
//  NetworkManager.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import Foundation

protocol NetworkManagerProtocol {
    func getData(searchKey: String) async throws -> Response?
}

class NetworkManager: NetworkManagerProtocol {
    static let shared = NetworkManager()
    private init() {}

    func getData(searchKey: String) async throws -> Response? {
        guard let url = URL(string: Server.originalURL + searchKey) else {
            throw NetworkError.badURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse else {
            throw NetworkError.badResponse
        }

        switch http.statusCode {
        case 200...299:
            break
        case 400:
            throw NetworkError.badRequest
        case 404:
            return Response(results: [])
        default:
            throw NetworkError.badResponse
        }

        do {
            return try JSONDecoder().decode(Response.self, from: data)
        } catch {
            throw NetworkError.decoderError
        }
    }
}
