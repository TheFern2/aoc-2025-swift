import ArgumentParser
import Foundation
import AOCCore
import Solutions

@main
struct AOCCLI: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "aoc-cli",
        abstract: "Run Advent of Code solutions"
    )
    
    @Argument(help: "The day number to run (1-25)")
    var day: Int
    
    func run() throws {
        registerAllSolutions()
        
        guard day >= 1 && day <= 25 else {
            print("Error: Day must be between 1 and 25")
            throw ExitCode.failure
        }
        
        print("Advent of Code 2025 - Day \(day)")
        print(String(repeating: "=", count: 40))
        print()
        
        guard let solution = SolutionRegistry.getSolution(for: day) else {
            print("Error: No solution found for day \(day)")
            print("Create your solution in Solutions/Day\(String(format: "%02d", day)).swift")
            throw ExitCode.failure
        }
        
        solution.run(day: day)
    }
}

