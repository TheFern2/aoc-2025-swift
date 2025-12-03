import Foundation

public protocol Solution {
    init()
    func part1(_ input: String) -> String
    func part2(_ input: String) -> String
}

public extension Solution {
    func run(day: Int) {
        let inputPath = "Inputs/day\(String(format: "%02d", day)).txt"
        
        guard let input = try? String(contentsOfFile: inputPath, encoding: .utf8) else {
            print("Error: Could not read input file at \(inputPath)")
            print("Make sure to create the Inputs directory and add your input file.")
            return
        }
        
        print("Day \(day) - Part 1:")
        let part1Result = part1(input)
        print(part1Result)
        
        print("\nDay \(day) - Part 2:")
        let part2Result = part2(input)
        print(part2Result)
    }
}

