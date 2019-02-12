//
//  FunctionalMethodTests.swift
//  CollectionsTests
//
//  Created by Chris J W Walker on 16/11/2018.
//  Copyright © 2018 Chris J W Walker. All rights reserved.
//

import XCTest

class FunctionalMethodTests: XCTestCase {

    
    
    //Exercise 1a: Double everything contained in the array
    func testDoubleEverything() {
        let integerArray = [1,2,3,4,5,6,7,8,9]
        
        let expectation = integerArray.map({ x in x * 2 })
        
        XCTAssert(expectation == [2,4,6,8,10,12,14,16,18])
    }
    
    //Exercise 1b: Square everything contained in the array
    func testSquareEverything() {
        let integerArray = [1,2,3,4,5,6,7,8,9]
        
        let expectation = integerArray.map({ $0 * $0 })
        
        XCTAssert(expectation == [1,4,9,16,25,36,49,64,81])
    }

    //Exercise 1c: Map everything contained in the array to a different type
    func testMapToOtherType() {
        let integerArray = [1,2,3,4,5,6,7,8,9]
        
        let expectation = integerArray.map({ String($0) })
        
        XCTAssert(expectation == ["1", "2", "3", "4", "5", "6", "7", "8", "9"])
    }
    
    //Exercise 2a: Return an array containing only even numbers
    func testFilterOutOddNumbers() {
        let integerArray = [1,2,3,4,5,6,7,8,9]
        
        let expectation = integerArray.filter {
            x in x % 2 == 0
        }
        
        XCTAssert(expectation == [2,4,6,8])
    }
    
    //Exercise 2b: Return an array containing only even numbers
    func testFilterOutEvenNumbers() {
        let integerArray = [1,2,3,4,5,6,7,8,9]
        
        let expectation = integerArray.filter {
            x in x % 2 != 0
        }
        
        XCTAssert(expectation == [1,3,5,7,9])
    }
    
    //Exercise 3a: Combine all elements in an array into a single value
    func testSumAllArrayElements() {
        let integerArray = [1,2,3,4,5]
        
        let expectation = integerArray.reduce(0, +)
        
        XCTAssert(expectation == 15)
    }
}
