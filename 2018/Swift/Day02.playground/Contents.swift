import Foundation

"abcdef".duplicateCharacterCount
"bababc".duplicateCharacterCount
"abbcde".duplicateCharacterCount
"abcccd".duplicateCharacterCount
"aabcdd".duplicateCharacterCount
"abcdee".duplicateCharacterCount
"ababab".duplicateCharacterCount

["abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab"].checksum
readInput().checksum

let test = Day02Test()

test.testInput1()
test.testInput2()
test.testInput3()
test.testInput4()
test.testInput5()
test.testInput6()
test.testInput7()
test.testInput8()

test.testInputFile1()

