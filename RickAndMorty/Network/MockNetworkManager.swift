//
//  MockNetworkManager.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import Foundation

class MockNetworkManager: NetworkManagerProtocol {
    static let mockShared = MockNetworkManager()
    private init() {}
    
    func getData(searchKey: String) async throws -> Response? {
        let items = [
            ResponseModel(id: 1, name: "Rick", image: "Image1", species: "Human", status: "status1", origin: Origin(name: "Earth", url: "url1"), type: "type1", created: "created1"),
            ResponseModel(id: 2, name: "Morty", image: "Image2", species: "Alien", status: "status2", origin: Origin(name: "Mars", url: "url2"), type: "type2", created: "created2"),
        ]
        return Response(results: items)
    }
}
