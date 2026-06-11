// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterMasterbelt",
    products: [
        .library(name: "TreeSitterMasterbelt", targets: ["TreeSitterMasterbelt"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterMasterbelt",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterMasterbeltTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterMasterbelt",
            ],
            path: "bindings/swift/TreeSitterMasterbeltTests"
        )
    ],
    cLanguageStandard: .c11
)
