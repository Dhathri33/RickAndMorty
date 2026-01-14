//
//  RickAndMortyTests.swift
//  RickAndMortyTests
//
//  Created by Dhathri Bathini on 1/13/26.
//

import XCTest
@testable import RickAndMorty

final class RickAndMortyTests: XCTestCase {
    private var networkManager: MockNetworkManager?

    override func setUpWithError() throws {
        networkManager = MockNetworkManager.mockShared
    }

    override func tearDownWithError() throws {
        networkManager = nil
    }
    
    func testGetNames() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].name, "Rick")
            XCTAssertEqual(dataArray[1].name, "Morty")
        }
    }
    
    func testGetImages() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].image, "Image1")
            XCTAssertEqual(dataArray[1].image, "Image2")
        }
    }
    
    func testGetSpecies() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].species, "Human")
            XCTAssertEqual(dataArray[1].species, "Alien")
        }
    }
    
    func testGetStatus() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].status, "status1")
            XCTAssertEqual(dataArray[1].name, "status2")
        }
    }
    
    func testGetOrigin() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].origin?.name, "Earth")
            XCTAssertEqual(dataArray[0].origin?.url, "url1")
            XCTAssertEqual(dataArray[1].origin?.name, "Mars")
            XCTAssertEqual(dataArray[1].origin?.url, "url2")
        }
    }
    
    func testGetType() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].type, "type1")
            XCTAssertEqual(dataArray[1].name, "type2")
        }
    }
    
    func testGetCreated() throws {
        var testResponse: Response?
        
        Task {
            do {
                testResponse = try await networkManager?.getData(searchKey: "")
            }
        }
        
        if let dataArray = testResponse?.results {
            XCTAssertEqual(dataArray[0].created, "created1")
            XCTAssertEqual(dataArray[1].created, "created2")
        }
    }
}
