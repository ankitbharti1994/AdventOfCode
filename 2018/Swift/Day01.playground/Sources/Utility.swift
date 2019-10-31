import Foundation

extension Array where Element == Int {
    /// puzzle 1 from README.md file
    public var frequency: Int {
        let result = self.reduce(0) { (result, val) -> Int in
            result + val
        }
        
        return result
    }
    
    /// puzzle 2 from README.md file
    public var firstRepeatedFrequency: Int {
        var result = 0
        var results = [result]
        var isReceivedDuplicate = false
        
        while !isReceivedDuplicate {
           for val in self {
                result += val
                isReceivedDuplicate = results.contains(result)
                if isReceivedDuplicate {
                    break
                } else {
                    results.append(result)
                }
            }
        }
    
        return result
    }
}

public func readInput() -> [Int] {
    guard let url = Bundle.main.url(forResource: "Input", withExtension: "txt"),
        let txt = try? String(contentsOf: url, encoding: .utf8) else {
        fatalError("file didn't find.")
    }
    
    let inputData = txt.components(separatedBy: "\n").map { Int($0) }.compactMap { $0 }
    return inputData
}
