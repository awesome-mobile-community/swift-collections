//
//  MutabilityTests.swift
//  CollectionsTests
//
//  Created by Chris J W Walker on 14/11/2018.
//  Copyright © 2018 Chris J W Walker. All rights reserved.
//

import XCTest

class ArrayMutabilityTests: XCTestCase {
    //Exercise 1a: Adding values to arrays
    func testAppendingSingleValuesToArrays() {
        var integerArray = [1,2,3,4,5]
    
        integerArray.append(6)
        
        XCTAssert(integerArray == [1,2,3,4,5,6])
    }
    
    //Exercise 1b: Adding values to sets
    func testAddingValuesToSets() {
        var partialAlphabet: Set<Character> = ["a", "b", "c", "d"]
        
        partialAlphabet.insert("e")
        
        XCTAssert(partialAlphabet == ["a", "b", "c", "d", "e"])
    }
    
    //Exercise 1c: Adding values to dictionaries
    func testAddingValuesToDictionaries() {
        var airportMappings = ["LAX" : "Los Angeles Internation", "BHX" : "Birmingham International"]
        
        airportMappings["LHR"] = "London Heathrow"
        
        XCTAssert(airportMappings == [
            "LAX" : "Los Angeles Internation",
            "BHX" : "Birmingham International",
            "LHR" : "London Heathrow"
        ])
    }
    
    //Exercise 2a: Adding arrays to arrays
    func testAddArrayToArray() {
        var integerArray = [1,2,3,4,5]
        let intArrayTwo  = [6,7,8,9,10]
        
        integerArray.append(contentsOf: intArrayTwo)
        
        XCTAssert(integerArray == [1,2,3,4,5,6,7,8,9,10])
    }

    //Exercise 2b: Adding sets to sets (Hint: you may need to reassign variables)
    func testAddSetToSet() {
        var partialAlphabet: Set<Character>  = ["a", "b", "c", "d"]
        let partialAlphabet2: Set<Character> = ["e", "f", "g", "h"]
        
        partialAlphabet = partialAlphabet.union(partialAlphabet2)
        
        XCTAssert(partialAlphabet == ["a", "b", "c", "d", "e", "f", "g", "h"])
    }

    //Exercise 2c: Adding dictionaries (Hint: you may have to use iteration)
    func testAddDictionaryToDictionary() {
        var airportMappings = ["LAX" : "Los Angeles Internation", "BHX" : "Birmingham International"]
        
        let moreAirports = ["DUB" : "Dublin", "AGP" : "Málaga Airport"]
        
        moreAirports.forEach({ airportMappings[$0] = $1 })
    
        XCTAssert(NSDictionary(dictionary: airportMappings).isEqual(to: [
            "LAX" : "Los Angeles Internation",
            "BHX" : "Birmingham International",
            "DUB" : "Dublin",
            "AGP" : "Málaga Airport"
        ]))
    }
}
