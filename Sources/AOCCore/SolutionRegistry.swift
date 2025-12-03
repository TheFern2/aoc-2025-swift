import Foundation

public class SolutionRegistry {
    private static var solutions: [Int: any Solution.Type] = [:]
    
    public static func register(day: Int, solution: any Solution.Type) {
        solutions[day] = solution
    }
    
    public static func getSolution(for day: Int) -> (any Solution)? {
        guard let solutionType = solutions[day] else {
            return nil
        }
        return solutionType.init()
    }
    
    public static func allDays() -> [Int] {
        return solutions.keys.sorted()
    }
}

