//
//  ResponseViewModel.swift
//  RickAndMorty
//
//  Created by Dhathri Bathini on 1/13/26.
//
import Foundation
import SwiftUI

protocol ResponseViewModelProtocol {
    var responseArray: [ResponseModel] { get set }
    var isLoading: Bool { get set }
    func getDataFromServer(searchKey: String) async
}

@Observable
class ResponseViewModel: ResponseViewModelProtocol {
    
    private let network: NetworkManagerProtocol
    var responseArray: [ResponseModel] = []
    var isLoading: Bool = false
    
    init(network: NetworkManagerProtocol = NetworkManager.shared) {
        self.network = network
    }
    
    @MainActor
    func getDataFromServer(searchKey: String) async {
        isLoading = true
        defer { isLoading = false }
        do {
            let result = try await network.getData(searchKey: searchKey)
            responseArray = result?.results ?? []
        } catch {
            responseArray = []
        }
    }
}
