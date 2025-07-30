//
//  SympleXCTest.swift
//  SymplaAppTestTests
//
//  Created by Gabriel Aragao on 24/07/25.
//

import XCTest
@testable import SymplaAppTest

final class SympleXCTest: XCTestCase {
    
    func testViewModelisNoEmpty() {
        let exp = expectation(description: "Loading stories")
        let viewModel: EventViewModel = EventViewModel()
        
        viewModel.fetchEvent {
            exp.fulfill()
        }
        waitForExpectations(timeout: 3)
        
        XCTAssertEqual(viewModel.eventResult.isEmpty, false, "Espera-se que o model não seja vazio")
    }
}
