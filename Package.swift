// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "aoc-2025-swift",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0")
    ],
    targets: [
        .executableTarget(
            name: "aoc-cli",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "AOCCore",
                "Solutions"
            ],
            path: "Sources/aoc-cli"
        ),
        .target(
            name: "AOCCore",
            path: "Sources/AOCCore"
        ),
        .target(
            name: "Solutions",
            dependencies: ["AOCCore"],
            path: "Solutions",
            exclude: ["README.md", "Day01.swift.template", "AllSolutions.swift.template"]
        )
    ]
)

