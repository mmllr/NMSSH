// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NMSSH",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "NMSSH",
            targets: ["NMSSH"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NMSSH",
            dependencies: [
                "CSSH"
            ]
        ),
        .binaryTarget(
            name: "CSSH",
            path: "Frameworks/CSSH.xcframework"
        )
    ]
)

