import Foundation
import XCTest

public class Day01Test: XCTestCase {
    override public class func setUp() {
        super.setUp()
    }
    
    override public func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Puzzle 1
    public func testInput1() {
        let input = [1, -2, 3, 1]
        let expectedOutput = 3
        
        let output = input.frequency
        XCTAssertEqual(output, expectedOutput)
    }
    
    public func testInput2() {
        let input = [1, -2, 3, 1]
        let expectedOutput = 4
        
        let output = input.frequency
        XCTAssertNotEqual(output, expectedOutput)
    }
    
    public func testInputFile1() {
        let input = readInput()
        let expectedOutput = 474
        
        let output = input.frequency
        XCTAssertEqual(output, expectedOutput)
    }
    
    // MARK: - Puzzle 2
    public func testInput3() {
        let input = [1, -1]
        let expectedOutput = 0
        
        let output = input.firstRepeatedFrequency
        XCTAssertEqual(output, expectedOutput)
    }
    
    public func testInput4() {
        let input = [+3, +3, +4, -2, -4]
        let expectedOutput = 10
        
        let output = input.firstRepeatedFrequency
        XCTAssertEqual(output, expectedOutput)
    }
    
    public func testInput5() {
        let input = [-6, +3, +8, +5, -6]
        let expectedOutput = 5
        
        let output = input.firstRepeatedFrequency
        XCTAssertEqual(output, expectedOutput)
    }
    
    public func testInput6() {
        let input = [+7, +7, -2, -7, -4]
        let expectedOutput = 14
        
        let output = input.firstRepeatedFrequency
        XCTAssertEqual(output, expectedOutput)
    }
    
    public func testInputFile2() {
        let input = readInput()
        let expectedOutput = 137041
        
        let output = input.firstRepeatedFrequency
        XCTAssertEqual(output, expectedOutput)
    }
}

