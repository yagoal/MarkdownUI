// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "swift-markdown-ui",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8),
    ],
    products: [
        .library(
            name: "MarkdownUI",
            targets: ["MarkdownUI"]
        )
    ],
    dependencies: [
        // Apenas SnapshotTesting foi mantido
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.10.0")
    ],
    targets: [
        .target(name: "cmark-gfm"),
        .target(
            name: "MarkdownUI",
            dependencies: ["cmark-gfm"]  // Removido NetworkImage
        ),
        .testTarget(
            name: "MarkdownUITests",
            dependencies: [
                "MarkdownUI",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
            ],
            exclude: ["__Snapshots__"]
        ),
    ]
)