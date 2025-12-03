# Solutions Directory

This directory contains your Advent of Code solution implementations.

## Creating a Solution

1. Copy the template file for the day you want to solve:
   ```bash
   cp Day01.swift.template Day01.swift
   ```

2. Implement the `part1` and `part2` methods in your solution file.

3. The solution files are gitignored, so your solutions remain private.

## Example Solution Structure

```swift
import Foundation
import AOCCore

public struct Day01: Solution {
    public init() {}
    
    public func part1(_ input: [String]) -> String {
        // input is already an array of lines
        for line in input {
            // Process each line
        }
        return "42"
    }
    
    public func part2(_ input: [String]) -> String {
        // Your solution logic here
        return "84"
    }
}
```

## Registering Solutions

When you use `make setup-day DAY=X`, your solution is automatically registered in `AllSolutions.swift`. If you create a solution manually, make sure to add it to `AllSolutions.swift`:

```swift
import AOCCore

public func registerAllSolutions() {
    SolutionRegistry.register(day: 1, solution: Day01.self)
    SolutionRegistry.register(day: 2, solution: Day02.self)
    // ... add more days as needed
}
```

