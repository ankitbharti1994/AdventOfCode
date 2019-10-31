import Foundation

// MARK: - Puzzle 1
[1, -2, 3, 1].frequency
[1, -2, 3, 1, 1, 1, -2, -1, -2, -3].frequency

let inputs = readInput()
inputs.frequency

// MARK: - Puzzle 2
[1, -1].firstRepeatedFrequency
[+3, +3, +4, -2, -4].firstRepeatedFrequency
[-6, +3, +8, +5, -6].firstRepeatedFrequency
[+7, +7, -2, -7, -4].firstRepeatedFrequency
inputs.firstRepeatedFrequency

// MARK: - Testing
let test = Day01Test()
test.testInput1()
test.testInput2()
test.testInput3()
test.testInput4()
test.testInput5()
test.testInput6()

test.testInputFile1()
test.testInputFile2()
