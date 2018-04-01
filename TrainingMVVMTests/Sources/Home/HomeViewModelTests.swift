//
//  HomeViewModel.swift
//  TrainingMVVMTests
//
//  Created by Quentin Prevost on 01/04/2018.
//  Copyright © 2018 Quentin Prevost. All rights reserved.
//

@testable import TrainingMVVM
import XCTest

class HomeViewModelTests: XCTestCase {
    func testWhenViewModelIsSet_dataSourceIsSet() {
        let viewModel = HomeViewModel()
        XCTAssertEqual(viewModel.title, "Welcome to MVVM")
    }
    
    func testWhenCellIsTouched_didSelectClosureReturnTheEvent() {
        let expect = expectation(description: "event")
        let viewModel = HomeViewModel()
        viewModel.buttonDidClicked = {
            expect.fulfill()
        }
        viewModel.buttonDidClickedFromController()
        
        waitForExpectations(timeout: 2.0, handler: nil)
    }
}
