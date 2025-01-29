//
//  SettingsServiceAPIIntegrationTests.swift
//  TDDTests
//
//  Created by Denny Arfansyah on 28/01/25.
//

import Moya
import XCTest
@testable import CreateCICD

class SettingsServiceAPIIntegrationTests: XCTestCase {
    func test_load_returnMenu() async {
        let stubbingProvider = MoyaProvider<SettingsTargetType>()
        let sut = SettingsServiceImplmentation(stubbingProvider: stubbingProvider)
        
        do {
            let menu = try await sut.getMenus()
            XCTAssertEqual(menu.traceId, "f332078c5e372ea592a128a62b933e89")
            XCTAssertEqual(menu.data.count, 2)
        } catch {
            XCTFail("expacting to get real response got \(error) instead")
        }
    }
}
