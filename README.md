# Advent of Code 2025 - Swift

A scaffolded Swift project for solving Advent of Code puzzles with a simple CLI.

## Prerequisites

- Swift 5.9.2 or later
- macOS 13.0 or later

## Setup

1. Clone this repository:
   ```bash
   git clone <your-repo-url>
   cd aoc-2025-swift
   ```

2. Build the project:
   ```bash
   swift build
   ```

## Usage

### Running a Solution

To run a solution for a specific day:

```bash
swift run aoc-cli 1
```

Or use the Makefile shortcut:

```bash
make run DAY=1
```

### Creating a New Day's Solution

1. Use the Makefile helper to set up a new day:
   ```bash
   make setup-day DAY=1
   ```
   
   This will:
   - Create `Solutions/Day01.swift` from the template
   - Create an empty `Inputs/day01.txt` file
   - Register the solution in `Solutions/AllSolutions.swift`

2. Add your puzzle input to `Inputs/day01.txt`

3. Implement your solution in `Solutions/Day01.swift`:
   ```swift
   import Foundation
   import AOCCore

   public struct Day01: Solution {
       public init() {}
       
       public func part1(_ input: String) -> String {
           // Your solution for part 1
           return "result"
       }
       
       public func part2(_ input: String) -> String {
           // Your solution for part 2
           return "result"
       }
   }
   ```

4. Run your solution:
   ```bash
   swift run aoc-cli 1
   ```

## Project Structure

```
aoc-2025-swift/
├── Package.swift           # Swift package configuration
├── Makefile               # Convenient build and run commands
├── Sources/
│   ├── aoc-cli/          # CLI executable
│   │   └── main.swift
│   └── AOCCore/          # Shared solution protocol
│       ├── Solution.swift
│       └── SolutionRegistry.swift
├── Solutions/            # Your solution implementations (gitignored)
│   ├── README.md
│   └── Day01.swift.template
└── Inputs/              # Your puzzle inputs (gitignored)
    └── README.md
```

## Features

- **Simple CLI**: Run solutions with `aoc-cli <day>`
- **Scaffolded Structure**: Easy template for creating new solutions
- **Git-Friendly**: Input files and solutions are gitignored
- **Reusable**: Others can clone and use the same structure

## Privacy

This project is configured to keep your solutions and inputs private:
- All `.txt` files in `Inputs/` are gitignored
- All `.swift` files in `Solutions/` are gitignored (except templates)

This complies with Advent of Code's request not to share puzzle inputs publicly.

## Optional: Install CLI Globally

To install the CLI globally on your system:

```bash
make install
```

Then you can run it from anywhere:

```bash
aoc-cli 1
```

## Makefile Commands

- `make build` - Build the project in release mode
- `make run DAY=X` - Run solution for day X
- `make setup-day DAY=X` - Create solution and input files for day X
- `make install` - Install CLI globally to /usr/local/bin
- `make clean` - Clean build artifacts

## License

This is a personal project template. Feel free to use it for your own Advent of Code solutions!
