import Foundation
import XCTest

public class Day02Test: XCTestCase {
    override public class func setUp() {
        super.setUp()
    }
    
    override public func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Puzzle 1
    public func testInput1() {
        let input = "abcdef"
        let expectedTwo = 0
        let expectedThree = 0
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
    
    public func testInput2() {
        let input = "bababc"
        let expectedTwo = 1
        let expectedThree = 1
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
    
    public func testInput3() {
        let input = "abbcde"
        let expectedTwo = 1
        let expectedThree = 0
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
    
    public func testInput4() {
        let input = "abcccd"
        let expectedTwo = 0
        let expectedThree = 1
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
    
    public func testInput5() {
        let input = "aabcdd"
        let expectedTwo = 1
        let expectedThree = 0
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
    
    public func testInput6() {
        let input = "abcdee"
        let expectedTwo = 1
        let expectedThree = 0
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
    
    public func testInput7() {
        let input = "ababab"
        let expectedTwo = 0
        let expectedThree = 1
        
        let output = input.duplicateCharacterCount
        XCTAssertEqual(output.two, expectedTwo)
        XCTAssertEqual(output.three, expectedThree)
    }
        
    public func testInput8() {
        let input = ["abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab"]
        let expectedOutput = 12

        let output = input.checksum
        XCTAssertEqual(output, expectedOutput)
    }
    
    public func testInputFile1() {
        let input = readInput()
        let expectedOutput = 6000
        
        let output = input.checksum
        XCTAssertEqual(output, expectedOutput)
    }
}

