import Foundation

extension Array where Element == String {
    public var checksum: Int {
        var twos = 0
        var threes = 0
        for str in self {
            let duplicate = str.duplicateCharacterCount
            twos += duplicate.two
            threes += duplicate.three
        }
        
        return twos * threes
    }
}

extension String {
    public var duplicateCharacterCount: (two: Int, three: Int) {
        let dic = Dictionary(grouping: self) { $0 }
        
        var _2Consecutive = 0
        var _3Consecutive = 0
        
        _ = dic.keys.map {
            if _2Consecutive < 1 {
                _2Consecutive += dic[$0]?.count == 2 ? 1 : 0
            }
         
            if _3Consecutive < 1 {
                _3Consecutive += dic[$0]?.count == 3 ? 1 : 0
            }
        }
    
        return (two: _2Consecutive, three: _3Consecutive)
    }
}

public func readInput() -> [String] {
    guard let url = Bundle.main.url(forResource: "Input", withExtension: "txt"),
        let txt = try? String(contentsOf: url, encoding: .utf8) else {
        fatalError("file didn't find.")
    }
    
    let inputData = txt.components(separatedBy: "\n").filter { !$0.isEmpty }
    return inputData
}
